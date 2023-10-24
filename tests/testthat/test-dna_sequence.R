test_that("Dna sequence works", {
  expect_equal(nchar(dna_sequence(8)), 8)
  expect_equal(nchar(dna_sequence(4)), 4)
  expect_equal(nchar(dna_sequence(20)), 20)
})
