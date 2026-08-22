# Retrieve Daily Weather Data from SILO PPD

Downloads daily weather records from the SILO Patched Point Dataset
(PPD) using the SILO API.

## Usage

``` r
silo_ppd(
  station,
  email,
  start = as.Date("1889-01-01"),
  finish = Sys.Date(),
  format = c("apsim", "standard"),
  outfile = NULL
)
```

## Arguments

- station:

  Character. The SILO PPD station ID.

- email:

  Character. Email address required for API access.

- start:

  Date. The start date for data retrieval.

- finish:

  Date. The end date for data retrieval.

- format:

  Character. Desired data format (e.g., "csv", "json").

- outfile:

  Character. Path to the output file where data will be saved.

## Value

Invisibly returns `NULL`. The function is called for its side effect of
downloading and/or saving data.

## Details

This function accesses the SILO PPD service (see
<https://www.longpaddock.qld.gov.au/silo/api-documentation/>) to
retrieve weather data for a specified station and date range. The data
can be returned in various formats and optionally saved to a file.
