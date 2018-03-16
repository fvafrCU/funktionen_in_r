golden_rectangle  <- function(value, landscape = FALSE) {
    phi <- (1 + sqrt(5)) / 2
    if (isTRUE(landscape)) {
        a  <- value
        b <- a / phi
    } else {
        b <- value
        a <- b * phi
    }
    return(c("a" = a, "b" = b))
}
