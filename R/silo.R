#' Get gridded data from SILO
#'
#' @details
#' Get weather record from SILO Gridded Dataset (https://www.longpaddock.qld.gov.au/silo/api-documentation/)
#'
#' @param lon longitude
#' @param lat latitude
#' @param startDate start date
#' @param endDate end date
#' @param email email address
#' @param outfile output file
#'
#' @return No return values
#' @export
silo_grid <- function(lon, lat, startDate, endDate, email, outfile) {
    url <- paste0('https://www.longpaddock.qld.gov.au/cgi-bin/silo/DataDrillDataset.php?lat=',
                  lat, '&lon=', lon, '&format=APSIM&start=',
                  startDate, '&finish=', endDate,
                  '&username=', email)
    message("Get SILO Gridded Data with ", url)
    resp <- httr::GET(url)
    response <- httr::content(resp, "text")
    writeLines(response, outfile)
}
