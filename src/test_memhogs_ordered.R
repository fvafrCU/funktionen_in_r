test_mem <- function() {
    va <- rep(mtcars, 1)
    vb <- rep(mtcars, 1000)
    vc <- rep(mtcars, 2000)
    vd <- rep(mtcars, 100)
    expectation <-  c("vc", "vb", "vd", "va")
    result <- memory_hogs()
    result <- grep("^v[abcd]$", names(result), value = TRUE)
    RUnit::checkIdentical(result, expectation)
}
