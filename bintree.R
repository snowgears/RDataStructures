
# a matrix is used for storage one row per node of the tree; a link i 
# in the tree means the vector m[i,] = (u,v,w); u and v are the left and 
# right links, and w is the stored value; null links have the value NA; 
# the matrix is referred to as the list (m,nxt), where m is the 
# matrix, nxt is the next empty row to be used

# initializes a storage matrix, with initial stored value firstval 
newbintree <- function()
{
   mat <- matrix(rep(NA,3),nrow = 1, ncol =3)

   #since tree is initialized but empty we say that nxt is 0 
      #so that when push is called the first node is 1

   return(list(mat=mat,nxt=0))
}

push.bintree <-function(tree,val)
{
   tree$nxt <- tree$nxt + 1
   # print(tree$nxt)
   #expand the tree sicne we are adding new node in 
   if(tree$nxt > nrow(tree$mat))
   {
      tree$mat <- rbind(tree$mat,matrix(rep(NA,3),nrow=1,ncol=3))
   }
      

   #store the position in which the new node will be stored
   newpos <- tree$nxt
   #print(newpos)   


   level <- 1

        #storing root
    if( newpos == 1)
    {
      tree$mat[newpos,3]<-val
      return(tree)
    }

    #traverse tree and evaluate each node to see if it is eligible 

      while(TRUE)
      {
         ##do nothing--no storage bc that value already exists
         if(tree$mat[level,3] == val )
         {

            tree$nxt <- tree$nxt - 1
            tree$mat <- tree$mat[-newpos,]
            
            break
         }


         ##go right 
         if(tree$mat[level,3] < val )
         {
            dir <- 2
         }

         ##go left
         if(tree$mat[level,3] > val)
         {
            dir <- 1
         }


         ##if our index is NA then set it because whatever got inserted is its child
         if(is.na(tree$mat[level,dir]))
         {
            tree$mat[newpos,3]<-val
            tree$mat[level,dir]<- newpos

            break

         }

         level <- tree$mat[level,dir]
         print(level)



      }

   print(tree$mat)
   return(tree)
}


# compareLevel <- function (tree,vallevel,level,index)
# {
#    if(index == 1)
#    {
#       otheridx<- 2
#    }
#    else
#    {
#       otheridx<- 1
#    }

#             if(!is.na(tree$mat[level,1]))
#             {
#                if( tree$mat[level,1] == vallevel)
#                {
#                     if(!is.na(tree$mat[vallevel,otheridx]))
#                      {
#                         ##decrement because there will be less values in the matrix 
#                          tree$mat[level,1] <- tree$mat[vallevel,otheridx]-1
                  
              
#                      }
#                      else
#                      {
#                         tree$mat[level,1] <- tree$mat[vallevel,index]
#                      }
#                }
#             }




# }
pop.bintree <- function(tree,val)
{
   #traverse matrix to find the appropriate level

   level <- 1
   vallevel<- 0

   #move all the values into a list
   nodeList <- tree$mat[,3]
   print("Original list")
   print(nodeList)

   #search the tree for the value 
   while(level <= nrow(tree$mat))
   {
      if( tree$mat[level,3] == val)
      {
               vallevel <- level
               break;
      }

      level <- level+1
   }

   #make sure that the value is in the tree
   if(vallevel != 0)
   {
      #remove the value from the list 
      nodeList<-nodeList[-vallevel]
      #take the new length
      listsize<-length(nodeList)
      print("Modified list")
      print(nodeList)
      print(listsize)

         #initialize a new tree
         tree <- newbintree()

         level <- 1

         #reinsert everything back into the tree
         while(level <= listsize)
         {

            tree<-push.bintree(tree,nodeList[level])

            level<-level+1
         
         }

         
   }
   # print(tree$mat)
   return(tree)

}


# print sorted tree via inorder traversal 
print.bintree <- function(hdidx,tree) { 
   left <- tree$mat[hdidx,1] 
   if (!is.na(left)) printtree(left,tree) 
   print(tree$mat[hdidx,3]) 
   right <- tree$mat[hdidx,2] 
   if (!is.na(right)) printtree(right,tree) 
} 



