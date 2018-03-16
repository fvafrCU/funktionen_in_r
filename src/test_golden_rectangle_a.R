testthat::test_that("Test on golden rectangle", {
                        a <- 2
                        expectation <- c(a = a, b = a / golden_ratio())
                        result <- golden_rectangle(a)
                        testthat::expect_identical(result, expectation)
})



