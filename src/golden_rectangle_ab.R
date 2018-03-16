golden_rectangle  <- function(value, quantity = c("a", "b")) {
    quantity <- match.arg(quantity)
    phi <- (1 + sqrt(5)) / 2
    switch(quantity,
           "a" = {
               a  <- value
               b <- a / phi
           },
           "b" = {
               b <- value
               a <- b * phi
           }           )
    return(c("a" = a, "b" = b, "a + b" = a + b))
}
