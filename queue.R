# ECS 145 Project
# Queue Implamentation

queue <- function(input) {
    rtrn <- list()
    class(rtrn) <- "queue"
    
    # Head and tail tracks position of the list
    rtrn$head <- 1
    rtrn$tail <- 1
    
    # data is a list which stores the queue data.
    # Initalized te first element to NA
    rtrn$data[[1]] <- NA
    
    return(rtrn);
}

print.queue <- function(inqueue) {
    for (i in inqueue$head:inqueue$tail)
        print(inqueue$data[[i]])
}