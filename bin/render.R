#!/usr/bin/Rscript --vanilla

#% get file name and options
arguments <- commandArgs(trailingOnly = TRUE)
if (any(c("-h", "--help") %in% arguments)){
    message("Render a Rmd File
        Usage: 
          render.R [-p -d N] file 
        Options:
        --purl: _only_ extract R code (run knitr's purl() on the file).
        --documentation: level of documentation for purl.
        --file: give a file name (otherwise, the last command line argument
                                  that's not starting with '-' is taken to be
                                  the file name).
        ")
    quit()
}

doc_level <- 0
documentation_arguments <- c("-d", "--documentation")
if (all(documentation_arguments %in% arguments)) stop(paste("got both", 
                                                   paste(documentation_arguments,
                                                         collapse = " and ")))
for (documentation_argument in documentation_arguments) {
    if (documentation_argument %in% arguments) {
        doc_level <- arguments[which(documentation_argument == arguments) + 1]
    }
}

print(str(arguments))

file_arguments <- c("-f", "--file")
if (all(file_arguments %in% arguments)) stop(paste("got both", 
                                                   paste(file_arguments,
                                                         collapse = " and ")))
for (file_argument in file_arguments) {
    if (file_argument %in% arguments) {
        file_name <- arguments[which(file_argument == arguments) + 1]
    }
}
missing_file_name <- ! exists("file_name")
missing_file_options <- ! any(file_arguments %in% arguments)
if (missing_file_name && missing_file_options) {
    # get file_name as last argument not starting with "-"
    left_over <- grep("^-", arguments, invert = TRUE, value = TRUE)
    num_left_over <- length(left_over)
    if (num_left_over > 0) {
        file_name <- left_over[num_left_over]
    }
}
if (! exists("file_name")) stop("don't know which file to use")
if (! file.exists(file_name)) stop(paste("there is no file", file_name))

#% knit the code
output_name <- sub("[Rr]md$", "R", file_name)
unlink(output_name)
knitr::purl(file_name, output = output_name, documentation = doc_level)
if (any(c("-p", "--purl") %in% arguments)){
    quit()
}

#% render only
inter_dir <- file.path(dirname(file_name), paste0("render_", file_name))
rmarkdown::render(file_name, clean = FALSE, intermediates_dir = inter_dir)

