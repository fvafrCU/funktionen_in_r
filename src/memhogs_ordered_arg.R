memory_hogs <- function(decreasing = FALSE) {
    z <- sapply(ls(envir = parent.frame()), 
                function(x) object.size(get(x, envir = parent.frame())))
    if (order) z <- z[order(z, decreasing = decreasing)]
    return(z)
}

