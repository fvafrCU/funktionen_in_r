testthat::test_that("Simple test on summation.", {
                    expectation <- c(a = 6, b = 3.70820393249937, "a + b" = 9.70820393249937) 
                    result <- golden_ratio(6, "a")
                    testthat::expect_equal(result, expectation)
                    result <- golden_ratio(3.70820393249937, "b")
                    testthat::expect_equal(result, expectation) 
})



