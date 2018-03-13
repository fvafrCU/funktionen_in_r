my_sum_safer <- function(x) {
    for (x_i in x) {
        value <- get("value", inherits = FALSE) + x_i 
    }
    return(value)
}

