memory_hogs <- function() {
    z <- sapply(ls(envir = parent.frame()), 
                function(x) object.size(get(x, envir = parent.frame())))
    z <- z[order(z, decreasing = TRUE)]
    return(z)
}

