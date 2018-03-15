wipe_clean <- function(environment = parent.frame()) {
    objects <- ls(name = environment, all.names = TRUE)
    rm(list = objects)
    return(invisible(objects))
}

