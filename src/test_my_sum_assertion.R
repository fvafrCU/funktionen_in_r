testthat::context("Tests for summation with argument assertion.")
testthat::test_that("Testing summation", {
                    testthat::expect_identical(my_sum(c(2, 7)), 9)
                    testthat::expect_error(my_sum(c("2" + "7")))
})
