# ECS 145 Project
# Queue Implamentation

queue <- function() {
    rtrn <- list()
    class(rtrn) <- "queue"
    
    # Head and tail tracks position of the list
    rtrn$head <- 1
    rtrn$tail <- 1
    
    # Length tracks the size of the queue
    rtrn$length <- 0
    
    # data is a list which stores the queue data.
    # Initalized te first element to NA
    rtrn$data <- vector()
    rtrn$data[1] <- NA
    
    return(rtrn);
}


print.queue <- function(inqueue) {
    if (inqueue$head == inqueue$tail)
        # if head and tail are the same, there is 1 no element
        queue_idx = inqueue$head
    else
        # generate range of data in the queue
        queue_idx = inqueue$head:(inqueue$tail-1)
    print(inqueue$data[queue_idx])
}


push.queue <- function(inqueue, item) {
    inqueue$data[inqueue$tail] <- item
    
    inqueue$tail <- inqueue$tail + 1
    inqueue$length <- inqueue$length + 1
    
    return(inqueue)
}


pop.queue <- function(inqueue) {
    # Check if there is an element in queue
    if (inqueue$length == 0) {
        warning("Error: Queue of length 0")
        stop()
    }
    else {
        element <- inqueue$data[inqueue$head]
        eval.parent(substitute(inqueue$data[inqueue$head] <- NA))
        eval.parent(substitute(inqueue$head <- inqueue$head + 1))
        eval.parent(substitute(inqueue$length <- inqueue$length - 1))
        return(element)
    }
}
