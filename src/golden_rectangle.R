golden_rectangle  <- function(value) {
    phi <- golden_ratio()
    a  <- value
    b <- a / phi
    return(c("a" = a, "b" = b))
}
