#' Filter rows within a numeric range
#'
#' This function filters a data frame based on a numeric column,
#' keeping only rows where the selected column falls within a specified range.
#' Missing values in the selected column are automatically removed.
#'
#' @param df A data frame containing the data to filter
#' @param col A numeric column to apply the filter on (tidy-evaluated, no quotes)
#' @param min Lower bound of the range (inclusive)
#' @param max Upper bound of the range (inclusive)
#'
#' @return A filtered data frame containing only rows within the specified range
#'
#' @importFrom dplyr filter
#' @export
#'
#' @examples
#' df <- data.frame(
#'   age = c(20, 35, 50, 65, 80),
#'   score = c(10, 20, 30, 40, 50)
#' )
#'
#' filter_range(df, age, 30, 70)
filter_range <- function(df, col, min, max) {
  df %>%
    dplyr::filter(!is.na({{col}}) & {{col}} >= min & {{col}} <= max)
}
