#' Plot Stock Trend S3 Method
#'
#' @description A custom visualization method for objects of class 'stock_data' using ggplot. Creates a time series of historical stock pricing based on the columns of "close" and "date".
#' @param x an object of class 'stock_data'.
#' @param ... Additional arguments passed to the generic plot function.
#' @return A \code{ggplot} object displaying the historical closing price trend over time.
#'
#' @import ggplot2
#' @import lubridate
#' @importFrom stats setdiff
#' @export

plot.stock_data <- function(x, ...) {

  if (!is.data.frame(x)) {
    stop("Error: The input 'data' must be a data frame or tibble.")

  }
  required_cols <- c("date", "close")
  missing_cols <- setdiff(required_cols, colnames(x))

  if (length(missing_cols) > 0) {
    stop(paste("Error: The dataset is missing required column(s):",
               paste(missing_cols, collapse =",")))
  }

  trend_plot <- ggplot(x, aes(x = date, y = close)) +
    geom_line(color = "black") +
    theme_minimal() +
    labs(x = "Date", y = "Closing Price", title = "Historical Closing Price")

  return(trend_plot)
}
