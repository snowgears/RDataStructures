

pop <- function(inds) UseMethod('pop')
push <- function(inds, item) UseMethod('push')
# a matrix is used for storage one row per node of the tree; a link i
# in the tree means the vector m[i,] = (u,v,w); u and v are the left and
# right links, and w is the stored value; null links have the value NA;
# the matrix is referred to as the list (m,nxt), where m is the
# matrix, nxt is the next empty row to be used

# initializes a storage matrix, with initial stored value firstval

newbintree <- function() {
   rtrn <- list()

   class(rtrn) <- 'bintree'
   rtrn$mat <- matrix(rep(NA,3),nrow = 1, ncol =3)
   rtrn$nxt <- 0
   #since tree is initialized but empty we say that nxt is 0
      #so that when push is called the first node is 1

   return(rtrn)
}

push.bintree <-function(inds ,item) {
    inds$nxt <- inds$nxt + 1

    #expand the tree sicne we are adding new node in
    if(inds$nxt > nrow(inds$mat))
        inds$mat <- rbind(inds$mat,matrix(rep(NA,3),nrow=1,ncol=3))

    #store the position in which the new node will be stored
    newpos <- inds$nxt
    level <- 1

    #storing root
    if( newpos == 1) {
        inds$mat[newpos, 3] <- item
        return(inds)
    }

    #traverse tree and evaluate each node to see if it is eligible
    while(TRUE) {
        ##go right
        if(inds$mat[level, 3] < item)
            dir <- 2

        ##go left
        if(inds$mat[level, 3] > item)
            dir <- 1

        ##do nothing--no storage bc that value already exists
        if(inds$mat[level,3] == item) {
            inds$nxt <- inds$nxt - 1
            inds$mat <- inds$mat[-newpos,]
            break
        }

        ##if our index is NA then set it because whatever got inserted is its child
        if(is.na(inds$mat[level, dir])) {
            inds$mat[newpos,3]<- item
            inds$mat[level,dir]<- newpos
            break
        }

        level <- inds$mat[level,dir]
    }
    return(inds)
}


#takes the tree as a parameter and removes the smallest
pop.bintree <- function(inds) {
    level <- 1
    while(TRUE) {
        ##traverse down
        if(!is.na(inds$mat[level,1])) {
            level <- inds$mat[level,1]
        }
        else {
            inds$mat <- inds$mat[-level,,drop=F]
            #collect the values of the binary tree
            nodeList <- inds$mat[,3]

            #allocate new tree
            temp <- newbintree()

            #something left to reinsert into binary tree
            if(length(nodeList) > 0) {
                i <- 1
                while(length(nodeList) >= i) {
                    temp <- push.bintree(temp,nodeList[i])
                    i <- i+1
                }
            }
            break
        }
   }
   return(temp)
}


printinorder<-function(root,tree) {
   left <- tree$mat[root,1] 
   if (!is.na(left)) printinorder(left,tree) 
   print(tree$mat[root,3]) 
   right <- tree$mat[root,2] 
   if (!is.na(right)) printinorder(right,tree) 

}


# print sorted tree via inorder traversal 
# pass in root = 1 corresponding to root for first call
print.bintree <- function(tree) { 
   level <- 1
   printinorder(level,tree)
}



