testthat::test_that("Trivial test on golden ratio.", {
                    expectation <- (1 + sqrt(5)) / 2
                    result <- golden_ratio()
                    testthat::expect_identical(result, expectation)
})



