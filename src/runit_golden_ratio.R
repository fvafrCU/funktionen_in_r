test_sum <- function() {
    expectation <- c(a = 6, b = 3.70820393249937, "a + b" = 9.70820393249937) 
    result <- golden_ratio(6, "a")
    RUnit::checkEquals(result, expectation)
    result <- golden_ratio(3.70820393249937, "b")
    RUnit::checkEquals(result, expectation)
}

