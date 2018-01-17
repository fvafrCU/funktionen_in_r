my_sum <- function(x) {
    assertthat::assert_that(is.numeric(x))
    value <- 0
    for (x_i in x) {
        value <- value + x_i 
    }
    return(value)
}
