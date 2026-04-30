test_that("summary_by_group works correctly", {

  df <- data.frame(
    Treatment = c("A", "A", "A", "B", "B", "B"),
    EPIC_TOT = c(10, 12, 14, 20, 18, 22)
  )

  result <- summary_by_group(df, Treatment, EPIC_TOT)

  # check if file is a data frame
  expect_true(is.data.frame(result))

  # check if correct columns exist
  expect_true(all(c("mean", "sd", "n") %in% names(result)))

  # check number of groups
  expect_equal(nrow(result), 2)
})
