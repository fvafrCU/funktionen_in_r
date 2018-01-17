testthat::test_that("Simple test on summation.",
                    testthat::expect_identical(my_sum(c(2, 7)), 9)
                    )

testthat::test_that("Create error on non-numerical x.",
                    testthat::expect_error(my_sum("This is a string"))
                    )


