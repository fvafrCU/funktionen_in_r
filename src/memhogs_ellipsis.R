memory_hogs <- function(...) {
    z <- sapply(ls(envir = parent.frame()), 
                function(x) object.size(get(x, envir = parent.frame())))
    if (! missing(...)) {
      z <- z[order(z, ...)]
    }
    return(z)
}

