# ECS 145 Project
# Queue Implamentation

queue <- function() {
    rtrn <- list()
    class(rtrn) <- "queue"
    
    # Head and tail tracks position of the list
    rtrn$head <- 1
    rtrn$tail <- 1
    
    # Length tracks the size of the queue
    rtrn$length <- 1
    
    # data is a list which stores the queue data.
    # Initalized te first element to NA
    rtrn$data <- c(NA)
    
    return(rtrn);
}


print.queue <- function(inqueue) {
    queue_idx = inqueue$head:inqueue$tail
    print(inqueue$data[queue_idx])
}


push.queue <- function(inqueue, item) {
    inqueue$data[inqueue$tail] <- item
    inqueue$tail <- inqueue$tail + 1
    inqueue$length <- inqueue$length + 1
    return(inqueue)
}


pop.queue <- function(inqueue) {
    element <- inqueue$data[inqueue$head]
    
    eval.parent(substitute(inqueue$head <- inqueue$head + 1))
    eval.parent(substitute(inqueue$length <- inqueue$length - 1))
    
    return(element)
}