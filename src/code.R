foo <- function(this, func, has, way, too, many,args) {
    if (TRUE) { if (TRUE) {
            if (TRUE) {
                if (TRUE) {
                    if (TRUE) {
                        print(this_is_not_defined)
                    } else {
                        stop("Foobar!")
                    }
                } else {
                    stop("Foobar!")
                }
            } else {
                stop("Foobar!")
            }
        } else {
            stop("Foobar!")
        }
    } else {
        stop("Foobar!")
    }
    return(invisible(NULL))
}

