test_that("Basic functionality default arguments", {
  expect_equal(get_codons("ATGATG"), c("ATG","ATG"))
  expect_equal(get_codons("AUGGCUGGCCUA", start = 2), c("GCU","GGC","CUA"))
})
