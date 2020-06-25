WITH ranks AS (
SELECT *,
       PERCENT_RANK() OVER (ORDER BY cases DESC) caserank,
       PERCENT_RANK() OVER (ORDER BY deaths DESC) deathrank
FROM latest_us_counties
WHERE county <> 'Unknown'
),
rolling AS (
   SELECT date, county, state, fips,
          cases, 
          avg(cases) OVER (PARTITION BY state, county ORDER BY date ROWS BETWEEN 3 PRECEDING AND 3 FOLLOWING) as cases7,
          deaths,
          avg(deaths) OVER (PARTITION BY state, county ORDER BY date ROWS BETWEEN 3 PRECEDING AND 3 FOLLOWING) as deaths7
     FROM us_counties
     WHERE county <> 'Unknown'
),
deltas AS (
  SELECT date, county, state, fips,
          cases,
          cases7,
          cases7 - LAG(cases7) OVER (PARTITION BY county, state ORDER BY `date`) newcases,
          deaths,
          deaths7, 
          deaths7 - LAG(deaths7) OVER (PARTITION BY county, state ORDER BY `date`) newdeaths
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
       ROUND(deaths7,1) deaths, ROUND(newdeaths, 1) newdeaths       
        from peaks 
WHERE deaths7 > 20 OR cases7 > 50
),
choice AS (
  SELECT * from display 
   where date >= LAST_DAY(CURDATE()) + INTERVAL 1 DAY - INTERVAL 1 MONTH
)
SELECT * FROM choice ORDER BY newdeaths DESC

