test_that("generate_dna returns correct length", {
  result <- generate_dna(10)
  expect_equal(nchar(result), 10)
})

test_that("generate_dna contains only valid bases", {
  result <- generate_dna(100)
  expect_true(grepl("^[ATGC]+$", result))
})
