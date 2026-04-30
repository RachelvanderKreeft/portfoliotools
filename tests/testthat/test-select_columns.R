test_that("select_columns selects correct columns", {

  df <- data.frame(
    age = c(20, 30),
    score = c(5, 6),
    group = c("A", "B")
  )

  result <- select_columns(df, age, score)

  expect_true(all(c("age", "score") %in% names(result)))
  expect_false("group" %in% names(result))
})
