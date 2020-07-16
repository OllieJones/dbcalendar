# Massachusetts town-by-town COVID-19 cases

The file `cases.csv` contains the  Massachusetts Department of Public Health weekly data for COVID-19 cases in each of the commonwealth's 351 municipalities.  Their weekly report comes out Wednesday evenings and is [here](https://www.mass.gov/info-details/covid-19-response-reporting#covid-19-weekly-public-health-report-).

This data file shows the history of the town-by-town cases. It starts with their first report on April 14, 2020. It ends with their report on July 15th, 2020. It's inspired by [the New York Times daily county-by-county case report data](https://github.com/nytimes/covid-19-data/blob/master/us-counties.csv).

For a while they reported, by town, the total number of cases and the rate per 100,000 population.

Then they added more data. They added the total number of tests, the tests per 100,000 population, and the percentage of tests coming back positive.

On July 15, they changed their reporting to add cases and tests in the previous 14 days. And they changed their reporting on tests to count distinct people tested, not total tests. So, it's getting to be a lot of work to make a coherent historical dataset.

If you use this please let me know. If you want different data please let me know. olliejones@hey.com .

It's Mass DPH's data. I've done my best to turn their weekly snapshots into a history, but I may have made mistakes. If you publish anything based on this data please credit Mass DPH and blame me.
