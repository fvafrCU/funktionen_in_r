my_sum <- function(x) {
    checkmate::qassert(x, "n>=2")
    value <- 0
    for (x_i in x) {
        value <- value + x_i 
    }
    return(value)
}
