WITH ranks AS (
SELECT *,
       PERCENT_RANK() OVER (ORDER BY cases DESC) caserank,
       PERCENT_RANK() OVER (ORDER BY deaths DESC) deathrank
FROM latest_us_counties
WHERE county <> 'Unknown'
),
rolling AS (
   SELECT date, us_counties.county, us_counties.state, us_counties.fips,
          cases, 
          avg(cases) OVER (PARTITION BY state, county ORDER BY date ROWS BETWEEN 6 PRECEDING AND 0 FOLLOWING) as cases7,
          deaths,
          avg(deaths) OVER (PARTITION BY state, county ORDER BY date ROWS BETWEEN 6 PRECEDING AND 0 FOLLOWING) as deaths7,
          IF(popestimate >0,popestimate, -1) population,
          IF(areas.LandArea > 0, popestimate / areas.LandArea, 0) popdensity
     FROM us_counties
     LEFT JOIN censuspop2 ON us_counties.fips = censuspop2.FIPS AND censuspop2.year = 2019
     LEFT JOIN areas ON us_counties.fips = areas.fips
     WHERE us_counties.county <> 'Unknown'
),
deltas AS (
  SELECT date, county, state, fips,
          cases,
          cases7,
          cases7 - LAG(cases7) OVER (PARTITION BY county, state ORDER BY `date`) newcases,
          deaths,
          deaths7, 
          deaths7 - LAG(deaths7) OVER (PARTITION BY county, state ORDER BY `date`) newdeaths,
          population,
          popdensity
     FROM rolling
),  
maxdeltas AS (
    SELECT county, state, fips, MAX(newcases) newcases, MAX(newdeaths) newdeaths
      FROM deltas
     GROUP BY county, state, fips
),
peaks AS (
     SELECT u.*
       FROM deltas u
       JOIN maxdeltas d
              ON u.county = d.county
             AND u.state = d.state
             AND u.newcases = d.newcases
),
display AS (
SELECT date, state, county, fips,
       ROUND(cases7,1) cases, ROUND(newcases, 1) newcases,
       ROUND(deaths7,1) deaths, ROUND(newdeaths, 1) newdeaths,
       population,
       ROUND (popdensity,0) popdensity,
       newcases/population newcasedensity,
       newdeaths/population newdeathdensity,
       cases/population caseedensity,
       deaths/population deathdensity             
        from peaks 
WHERE deaths7 > 20 OR cases7 > 100
),
choice AS (
  SELECT * from display 
   where date >= LAST_DAY(CURDATE()) + INTERVAL 1 DAY - INTERVAL 2 MONTH
)
SELECT * FROM choice  order by popdensity desc