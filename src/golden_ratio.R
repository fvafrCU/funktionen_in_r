golden_ratio  <- function(value, quantity = c("a + b", "a", "b")) {
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
           },
           {
               a <- value / phi
               b <- a * phi - a
           }
           )
    return(c("a" = a, "b" = b, "a + b" = a + b))
}

