test_that("drop_na_cols removes rows with NA in selected columns", {

  df <- data.frame(
    age = c(20, NA, 40),
    score = c(10, 20, NA),
    group = c("A", "B", "C")
  )

  result <- drop_na_cols(df, age, score)

  # check no NA in selected columns
  expect_false(any(is.na(result$age)))
  expect_false(any(is.na(result$score)))

  # check correct number of rows
  expect_equal(nrow(result), 1)
})
