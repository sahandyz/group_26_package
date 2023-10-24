test_that("Codons to AA Sequence", {
  input <- c("AUG", "UUA", "ACG", "GGC", "CGC")
  expected_output <- "MLTGR"
  result <- codons_to_aa_sequence(input)
  expect_equal(result, expected_output)
})
