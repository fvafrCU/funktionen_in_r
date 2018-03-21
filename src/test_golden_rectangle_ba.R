testthat::test_that("Test on golden rectangle", {
                        value <- 2
                        expectation <- c(a = value * golden_ratio(), b = value)
                        result <- golden_rectangle(value)
                        testthat::expect_identical(result, expectation)
                        result <- golden_rectangle(value * golden_ratio(), TRUE)
                        testthat::expect_identical(result, expectation)
})
