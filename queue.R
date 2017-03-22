# ECS 145 Project
# Queue Implamentation

# Declare generic functions
pop <- function(inds) UseMethod('pop')
push <- function(inds, item) UseMethod('push')


newqueue <- function() {
    rtrn <- list()
    class(rtrn) <- 'queue'

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
    if (inqueue$head != inqueue$tail) {
        # generate range of data in the queue
        queue_idx = inqueue$head:(inqueue$tail-1)
        print(inqueue$data[queue_idx])
    }
}


push.queue <- function(inds, item) {
    # Insert item
    eval.parent(substitute(inds$data[inds$tail] <- item))

    # Update length and tail
    eval.parent(substitute(inds$tail <- inds$tail + 1))
    eval.parent(substitute(inds$length <- inds$length + 1))
}


pop.queue <- function(inds) {
    # Check if there is an element in queue
    if (inds$length == 0) {
        warning("Error: Queue of length 0")
        stop()
    }
    else {
        # take out element at the head
        element <- inds$data[inds$head]

        # Update popped element to NA
        eval.parent(substitute(inds$data[inds$head] <- NA))

        # Update length and head
        eval.parent(substitute(inds$head <- inds$head + 1))
        eval.parent(substitute(inds$length <- inds$length - 1))
        return(element)
    }
}
