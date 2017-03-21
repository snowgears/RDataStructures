# ECS 145 Project
# Stack Implamentation

pop <- function(instack) UseMethod('pop')
push <- function(instack, item) UseMethod('push')

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


push.stack <- function(instack, item) {
    # Insert item
    eval.parent(substitute(instack$data[instack$top] <- item))

    # Update length and top
    eval.parent(substitute(instack$top <- instack$top + 1))
    eval.parent(substitute(instack$length <- instack$length + 1))
}


pop.stack <- function(instack) {
    if (instack$length == 0) {
        # Check if stack is empty
        warning("Popping empty stack!")
        stop()
    }
    else {
        # Take element at the top
        element <- instack$data[instack$top - 1]

        # Set popped element to NA
        eval.parent(substitute(instack$data[instack$top - 1] <- NA))

        # Update top and length
        eval.parent(substitute(instack$top<- instack$top - 1))
        eval.parent(substitute(instack$length <- instack$length - 1))

        return(element)
    }
}
