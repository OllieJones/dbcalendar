# dbcalendar

Here is a collection of database tables, views, and stored functions to support work with calendars.

## Tables

1. `easter_west_input` The dates of Easter according to the Western Christian calendar.
2. `jewish_input` The dates, in the common calendar, of various Jewish festivals

## Views for raw sequences

1. `day_input` A view to generate a sequence of dates, spanning 1700-2300.
2. `year_input` A view to generate a sequence of years (integers), spanning 1700-2300.

# Views for use

1. `day_source`  rows containing `day` and `year` for each day from 1970 - 2300.
2. `year_source` rows containing `day` and `year` for January 1 each year from 1970-2300.
3. `weekend_source` rows containing `day`, `year`, `event`, and `calendar` for weekend days. The `event` and `calendar` values are `Weekend`.
4. `christian_west_source` the `day`, `year`, and `event` of various days on the Christian calendar. The `calendar` values are `Christian (West)`.  (Why `West`? Because the Eastern Orthodox part of Christianity uses a different calendar.)
5. `jewish_source` the `day`, `year`, and `event` of various Jewish festivals in the `Jewish` `calendar`.
5. `north_america_source` the `day`, `year`, and `event` of various civic holidays in the `USA`, `Canada`, and `Massachusetts` calendars.
6. `holiday_source` the union of 

## What can you do with this stuff?

These tables and views support various queries you may need.

### Is today a holiday on the USA calendar?

```
SELECT COUNT(*) FROM holiday_source WHERE calendar = 'USA' AND day = CURDATE()
```

### Holidays on a given range of days

```
SELECT day_source.day, GROUP_CONCAT(DISTINCT holiday_source.event ORDER BY holiday_source.event) events
  FROM day_source
  LEFT JOIN holiday_source ON day_source.day = holiday_source.day
 WHERE day_source.day >= '2020-03-01' AND  day_source.day < '2020-07-01'
 GROUP BY day_source.day
```

### How many days in the current quarter are weekends or Canadian holidays?

```
SELECT COUNT(*)
  FROM day_source
 WHERE day IN (select day from holiday_source WHERE calendar='Canada'
                UNION 
               select day from weekend_source)
   AND QUARTER(day) = QUARTER(curdate()) AND year = YEAR(CURDATE())
```

## Stored functions

A collection of stored functions helps with date arithmetic.

### FIRST_DAYOFWEEK_OF(date,dayofweek)

Given any date and a dayofweek number, this function returns the first day in that month. For example, `FIRST_DAYOFWEEK_OF(CURDATE(),6)` returns the date of the first Saturday in the present month.

`dayofweek` numbers run from `1` for Sunday to `6` for Saturday.

### LAST_DAYOFWEEK_OF(date, dayofweek)

Given any date and a dayofweek number, this function returns the first day in that month. For example, `LAST_DAYOFWEEK_OF(CURDATE(),2)` returns the date of the last Monday in the present month.

### FIRST_MONDAY_OF(date)
### LAST_MONDAY_OF(date)

These give the first and last Mondays of the month in the `date`. (They come in handy for Labor Day and Memorial Day on the USA calendar).

### TRUNC_DAYOFWEEK(date, dayofweek)

This function takes any date and rounds it down to the day of week.  For example, suppose today is Thursday, 16 April 2020. Then 

* `TRUNC_DAYOFWEEK('2020-04-16', 2)` yields 13 April 2020, last Monday (dayofweek 2)
* `TRUNC_DAYOFWEEK('2020-04-16', 4)` yields today, because today is Thursday (dayofweek 4)
* `TRUNC_DAYOFWEEK('2020-04-16', 6)` yields 10-April 2020, last Saturday (dayofweek 6)

### TRUNC_SUNDAY(date)
### TRUNC_MONDAY(date)

These yields the date rounded down to Sunday or Monday. These are handy for summarizing data week by week. For example, suppose you have a `sales` table with `datestamp`, `customer`, `product`, `units`, and `amount` in it. You can get a week-by-week summary of sales like this (assuming your weeks start Sundays).

```
SELECT TRUNC_SUNDAY(day_source.day) week_beginning, 
       SUM(units) units,
       SUM(amount) amount
  FROM day_source
  LEFT JOIN sales ON day_source.day = sales.day
 WHERE YEAR(sales.day) = YEAR(CURDATE())
 GROUP BY TRUNC_SUNDAY(day_source.day)
```

This uses the `day_source` table to show all the weeks, even those with no sales.

### TRUNC_DAY(date)
### TRUNC_MONTH(date)
### TRUNC_QUARTER(date)

These give the date of the present day, month, and quarter.  Why a function for the present day? It works on TIMESTAMP and DATETIME items, converting them into just their present date.

### TRUNC_N_HOURS(datestamp, n)

This truncates TIMESTAMP and DATETIME values to the nearest N hours. For example `

    TRUNC_N_HOURS('2020-04-16 11:32:50', 4)

gives back '2020-04-16 08:00:00', the time rounded down to the nearest 4=hour boundary.

### TRUNC_HOUR(datestamp)
### ROUND_HOUR(datestamp)

These give the time rounded to the nearest hour. The `TRUNC` variant rounds down, and the `ROUND` variant rounds either down or up to the nearest hour.

## Things to do

* Get an Islamic calendar. 
* Get a Hindu calendar.
* Get an Eastern Orthodox Christian calendar.
* Get more national calendars.
* Create a version of this for PostgreSQL.
* Create a version of this for SQL Server.
* Create a version of this for Oracle.

Any input and suggestions are welcome.

## Performance tip

With the exception of the `easter_west_input` and `jewish_input` tables, all the calendar data is provided as sql views. You may want to *materialize* those views -- put that data into tables and index it -- to get good performance in production. 

## Credits

* [Thomas Larsen]( http://tlarsen2.tripod.com/thomaslarsen/easterdates.html) worked out the dates of Easter for a six-hundred-year span.

* [hebcal.com](hebcal.com) provided the dates of Jewish holidays under a Creative Commons 3.0 Attribution license.

Thanks!

## License

You may use this under either the MIT license or the Creative Commons 3.0 Attribution license at your choice.
 