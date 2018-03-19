testthat::test_that("Test on golden rectangle", {
                        expectation <- (1 + sqrt(5)) / 2
                        result <- golden_ratio(value)
                        testthat::expect_identical(result, expectation)
})



