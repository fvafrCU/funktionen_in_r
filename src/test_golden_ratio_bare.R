testthat::test_that("Test on Golden Ratio", {
                        expectation <- (1 + sqrt(5)) / 2
                        result <- golden_ratio()
                        testthat::expect_identical(result, expectation)
})
