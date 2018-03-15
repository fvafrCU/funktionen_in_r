test_sum <- function() {
    RUnit::checkIdentical(not_my_sum(c(2, 7)), 9)
    RUnit::checkIdentical(my_sum(c(2, 7)), 9)
}

