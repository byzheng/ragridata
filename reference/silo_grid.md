# Retrieve Gridded Weather Data from SILO

Downloads weather records from the SILO Gridded Dataset API
(<https://www.longpaddock.qld.gov.au/silo/api-documentation/>) for a
specified location and date range.

## Usage

``` r
silo_grid(
  lon,
  lat,
  email,
  start = as.Date("1889-01-01"),
  finish = Sys.Date(),
  format = c("apsim", "standard"),
  outfile = NULL
)
```

## Arguments

- lon:

  Numeric. Longitude of the location.

- lat:

  Numeric. Latitude of the location.

- email:

  Character. Email address required for API access.

- start:

  Date or character. Start date of the data request (in "YYYY-MM-DD"
  format).

- finish:

  Date or character. End date of the data request (in "YYYY-MM-DD"
  format).

- format:

  Character. Data format to request from the API (e.g., "csv", "json").

- outfile:

  Character. Path to the output file where data will be saved.

## Value

Invisibly returns `NULL`. The function is called for its side effect of
downloading and saving the data.

## Examples

``` r
if (FALSE) { # \dontrun{
get_silo_data(
  lon = 151.2,
  lat = -27.5,
  start = "2020-01-01",
  finish = "2020-12-31",
  email = "user@example.com",
  format = "csv",
  output_format = "apsim",
  outfile = "weather.apsim"
)
} # }
```
