test_that("translation works correctly", {
  # Test 1: Single codon
  expect_equal(translation("AUG"), "M")

  # Test 2: Multiple codons
  expect_equal(translation(c("AUG", "UUU", "UUC")), "MFF")

  # Test 3: Empty input
  expect_equal(translation(character(0)), "")
})
