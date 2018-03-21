testthat::test_that("Test return value.", {
                    a <- 3
                    testthat::expect_identical(wipe_clean(), 
                                               c("a"))}
                    )
