testthat::test_that("Test return value and side effects.", {
                    a <- 3
                    testthat::expect_identical(wipe_clean(), c("a"))
                    testthat::expect_identical(ls(), character(0))}
                    )


