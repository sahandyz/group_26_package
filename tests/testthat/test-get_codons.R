test_that("get_codons", {
  input<- "AUGCCGCUUAAG"
  expected_output<- c("AUG","CCG","CUU", "AAG")
  result<- get_codons("AUGCCGCUUAAG", start = 1)
  expect_equal(expected_output, result)
})
