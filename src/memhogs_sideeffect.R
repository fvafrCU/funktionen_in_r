memory_hogs <- function(verbose = TRUE) {
    z <- sapply(ls(envir = parent.frame()), 
                function(x) object.size(get(x, envir = parent.frame())))
    z <- z[order(z, decreasing = TRUE)]
    if (isTRUE(verbose)) print(z)
    return(invisible(names(z)))
}

