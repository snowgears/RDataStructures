# ECS 145 Project
# Stack Implamentation

stack <- function() {
    rtrn <- list()
    class(rtrn) <- "stack"
    
    # Head and tail tracks position of the list
    rtrn$head <- 1
    rtrn$tail <- 1
    
    # Length tracks the size of the stack
    rtrn$length <- 0
    
    # data is a list which stores the stack data.
    # Initalized te first element to NA
    rtrn$data <- vector()
    rtrn$data[1] <- NA
    
    return(rtrn);
}


print.stack <- function(inqueue) {
    if (inqueue$head == inqueue$tail)
        # if head and tail are the same, there is 1 element
        stack_idx = inqueue$head
    else
        # generate range of data in the queue
        stack_idx = (inqueue$head-1):(inqueue$tail)

    if(inqueue$head == 1 && inqueue$tail == 1)
      print(vector())
    else
      print(inqueue$data[stack_idx])
}


push.stack <- function(inqueue, item) {
    inqueue$data[inqueue$head] <- item
    
    inqueue$head <- inqueue$head + 1
    inqueue$length <- inqueue$length + 1
    
    return(inqueue)
}


pop.stack <- function(inqueue) {
    element <- inqueue$data[inqueue$head]
    
    eval.parent(substitute(inqueue$head <- inqueue$head - 1))
    eval.parent(substitute(inqueue$length <- inqueue$length - 1))
    
    return(element)
}