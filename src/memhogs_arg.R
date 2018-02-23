memory_hogs <- function(order = TRUE) {
    z <- sapply(ls(envir = parent.frame()), 
                function(x) object.size(get(x, envir = parent.frame())))
    if (order) z <- z[order(z)]
    return(z)
}

