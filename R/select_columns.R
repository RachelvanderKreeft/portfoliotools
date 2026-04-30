#' Select columns from a data frame
#'
#' This function selects one or more columns from a data frame.
#'
#' @param df A data frame
#' @param ... Column names to select
#'
#' @return A data frame with selected columns
#'
#' @importFrom dplyr select
#' @export
#'
#' @examples
#' df <- data.frame(age = 1:3, score = 4:6)
#' select_columns(df, age, score)
select_columns <- function(df, ...) {
  dplyr::select(df, ...)
}
