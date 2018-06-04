write.csv2(mtcars, file = file.path(tempdir(), "cars.csv"))
write.csv2(iris, file = file.path(tempdir(), "iris.csv"))
csv2csv  <- function(path, input = c("german", "international")) {
    input <- match.arg(input)
    if (isTRUE(identical(input, "german"))) {
            read <- read.csv2
            write <- write.csv
    } else {
            read <- read.csv
            write <- write.csv2
    }
    csv_files <- list.files(path, full.names = TRUE, pattern = ".*\\.csv")
    for (file in csv_files) {
            do.call(write, list(do.call(read, list(file)), file = file))
    }
    return(invisible(NULL))
}
print(csv2csv(path = tempdir()))
