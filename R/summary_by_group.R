#' Summarise a numeric column by group
#'
#' This function groups a data frame by a categorical variable and computes
#' the mean, standard deviation, and number of observations for a specified
#' numeric column within each group.
#'
#' It is designed as a simple, beginner-friendly wrapper around common
#' dplyr summary operations.
#'
#' @param df A data frame containing the data.
#' @param group A grouping variable (unquoted column name).
#' @param value A numeric variable (unquoted column name).
#'
#' @returns A data frame with one row per group and columns for mean, standard deviation, and sample size.
#'
#' @importFrom magrittr %>%
#' @importFrom dplyr group_by summarise n
#' @importFrom stats sd
#' @export
#'
#' @examples
#' df <- data.frame(
#'   Treatment = c("A", "A", "A", "B", "B", "B"),
#'   Score = c(10, 12, 14, 20, 18, 22)
#' )
#'
#' summary_by_group(df, Treatment, Score)
summary_by_group <- function(df, group, value) {
  df %>%
    group_by({{group}}) %>%
    summarise(mean = mean({{value}}, na.rm = TRUE),
              sd = sd({{value}}, na.rm = TRUE),
              n = n())
}
