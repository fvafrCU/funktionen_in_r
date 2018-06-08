wipe_clean <- function(environment = parent.frame()) {
    objects <- ls(name = environment, all.names = TRUE)
    # FIXME: rm() by default removes objects from  
    # the current frame, which is this function, not the parent frame!
    rm(list = objects) 
    return(invisible(objects))
}

