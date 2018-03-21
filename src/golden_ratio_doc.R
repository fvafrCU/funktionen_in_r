#' Compute the Other Quantity in Golden Ratio
#'
#' See \url{https://en.wikipedia.org/wiki/Golden_ratio} for an introduction to
#' the Golden Ratio.
#'
#' Specify \code{value = 1} to obtain the Golden Ratio itself in element "a" of 
#' the return value.
#' @param value A Quantity.
#' @param landscape Is the quantity given by \code{value} the larger one ("a")?
#' @return A vector giving the quantities "a" and "b".
#' @export
#' @examples
#' print(golden_ratio(value = 1)[["a"]])
golden_ratio  <- function(value, landscape = FALSE) {
    phi <- golden_ratio()
    if (isTRUE(landscape)) {
        a  <- value
        b <- a / phi
    } else {
        b <- value
        a <- b * phi
    }
    return(c("a" = a, "b" = b))
}
