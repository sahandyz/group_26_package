test_that("DNA to RNA works", {
  input <- "TACGT"
  expected_output <- "UACGU"
  result <- replace_T_with_U(input)
  expect_equal(result, expected_output)
})
