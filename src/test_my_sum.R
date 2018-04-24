testthat::context("My first test.")
testthat::test_that("Simple test on summation.", {
                        testthat::expect_identical(not_my_sum(c(2, 7)), 9,
                                                   info = "Not my sum.")
                        testthat::expect_identical(my_sum(c(2, 7)), 9, 
                                                   info = "My sum.")
})
