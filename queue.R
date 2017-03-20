# ECS 145 Project
# Queue Implamentation


# queue()
# Initalizer fo the queue class
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


# print()
# Prints the queue
print.queue <- function(inqueue) {
    if (inqueue$head == inqueue$tail)
        # if head and tail are the same, there is 1 element
        queue_idx = inqueue$head
    else
        # generate range of data in the queue
        queue_idx = inqueue$head:(inqueue$tail-1)
    print(inqueue$data[queue_idx])
}


# push()
# Pushes the item into the queue. Returns the queue
push.queue <- function(inqueue, item) {
    inqueue$data[inqueue$tail] <- item
    
    # Update tail and length
    inqueue$tail <- inqueue$tail + 1
    inqueue$length <- inqueue$length + 1
    
    return(inqueue)
}


# pop()
# Pops the element at the head of the queue. Returns the element poped
pop.queue <- function(inqueue) {
    element <- inqueue$data[inqueue$head]
    
    # Update head and length.
    # eval.parent(substitute(...)) updates the queue even thoug
    # a queue isn't returned
    eval.parent(substitute(inqueue$head <- inqueue$head + 1))
    eval.parent(substitute(inqueue$length <- inqueue$length - 1))
    
    return(element)
}