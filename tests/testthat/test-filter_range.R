test_that("filter_range filters correctly", {

  # test data
  df <- data.frame(
    age = c(20, 35, 50, 65, 80),
    score = c(10, 20, 30, 40, 50)
  )

  # run function
  result <- filter_range(df, age, 30, 70)

  # 1. check that is a data frame
  expect_true(is.data.frame(result))

  # 2. select only values within range
  expect_true(all(result$age >= 30 & result$age <= 70))

  # 3. correct number of rows
  expect_equal(nrow(result), 3)

  # 4. NA handling check
  expect_false(any(is.na(result$age)))
})
