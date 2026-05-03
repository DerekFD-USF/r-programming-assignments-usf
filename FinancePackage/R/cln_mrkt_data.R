#' Cleaning Stock Market Data
#'
#' @description This function takes raw messy financial data and standardizes it. It formats date and time as well as standardizes all columns in lowercase. The column names get formatted to remove any underscore or dashes. It also skips any date formatting steps if the data does not have a 'date' column.
#' @param data A data frame or tibble containing stock data.
#' @return A cleaned tibble with the added S3 class 'stock_data'.
#' @importFrom dplyr as_tibble rename_with mutate arrange
#' @importFrom magrittr %>%
#' @importFrom lubridate mdy
#' @importFrom tidyr drop_na
#' @export
cln_mrkt_data <- function(data) {
  if (!is.data.frame(data)) {
    stop("Error: The input 'data' must be a data frame or tibble.")

  }

  df <- as_tibble(data) %>%
    rename_with(function(col) tolower(gsub("[._-]", "", col)))

  if("date" %in% colnames(df)) {
    df <- df %>%
      mutate(date = mdy(date)) %>%
    arrange(date)
  } else {
    message("Notice: No 'date' column found. Skipping date formatting and sorting.")
  }
  df <- df %>%
    drop_na()

    class(df) <- c("stock_data", class(df))

    return(df)
}
