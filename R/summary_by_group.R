summary_by_group <- function(df, group, value) {
  df %>%
    group_by({{group}}) %>%
    summarise(mean = mean({{value}}, na.rm = TRUE),
              sd = sd({{value}}, na.rm = TRUE),
              n = n())
}
