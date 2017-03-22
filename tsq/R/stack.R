# ECS 145 Project
# Stack Implamentation

pop <- function(inds) UseMethod('pop')
push <- function(inds, item) UseMethod('push')

newstack <- function() {
    rtrn <- list()
    class(rtrn) <- "stack"

    # top tracks top of the stack
    rtrn$top <- 1

    # Length tracks the size of the stack
    rtrn$length <- 0

    # data is a list which stores the stack data.
    # Initalized te first element to NA
    rtrn$data <- vector()
    rtrn$data[1] <- NA

    return(rtrn);
}


print.stack <- function(instack) {
    if (instack$length != 0) {
        # generate range of data in the stack
        stack_idx = 1:(instack$top - 1)
        print(instack$data[stack_idx])
    }
}


push.stack <- function(inds, item) {
    # Insert item
    eval.parent(substitute(inds$data[inds$top] <- item))

    # Update length and top
    eval.parent(substitute(inds$top <- inds$top + 1))
    eval.parent(substitute(inds$length <- inds$length + 1))
}


pop.stack <- function(inds) {
    if (inds$length == 0) {
        # Check if stack is empty
        warning("Popping empty stack!")
        stop()
    }
    else {
        # Take element at the top
        element <- inds$data[inds$top - 1]

        # Set popped element to NA
        eval.parent(substitute(inds$data[inds$top - 1] <- NA))

        # Update top and length
        eval.parent(substitute(inds$top<- inds$top - 1))
        eval.parent(substitute(inds$length <- inds$length - 1))

        return(element)
    }
}
