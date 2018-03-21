golden_rectangle  <- function(value, landscape = FALSE) {
    phi <- golden_ratio()
    if (isTRUE(landscape)) {
        a  <- value
        b <- a / phi
    } else {
        b <- value
        a <- b * phi
    }
    return(c("a" = a, "b" = b))
}
