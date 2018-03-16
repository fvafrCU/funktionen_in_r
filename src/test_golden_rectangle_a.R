testthat::test_that("Test on golden rectangle", {
                        b <- 2
                        expectation <- c(a = b * golden_ratio(), b = b)
                        result <- golden_rectangle(b)
                        testthat::expect_identical(result, expectation)
})



