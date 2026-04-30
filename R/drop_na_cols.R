#' Remove rows with missing values in selected columns
#'
#' This function filters a data frame by removing rows that contain NA
#' values in any of the specified columns.
#'
#' @param df A data frame
#' @param ... Columns to check for missing values
#'
#' @return A data frame with rows removed where selected columns contain NA
#'
#' @importFrom dplyr filter if_any
#' @export
#'
#' @examples
#' df <- data.frame(
#'   age = c(20, NA, 40),
#'   score = c(10, 20, NA),
#'   group = c("A", "B", "C")
#' )
#'
#' drop_na_cols(df, age, score)
drop_na_cols <- function(df, ...) {
  df %>%
    dplyr::filter(!if_any(c(...), is.na))
}
