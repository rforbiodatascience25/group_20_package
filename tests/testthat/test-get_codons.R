test_that("Basic functionality default arguments", {
  expect_equal(get_codons("ATGATG"), c("ATG","ATG"))
})
