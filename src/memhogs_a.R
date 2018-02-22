memory_hogs <- function() {
    z <- sapply(ls(envir = knitr::knit_global()), 
                function(x) object.size(get(x, envir = knitr::knit_global())))
    z <- z[order(z)]
    return(z)
}

