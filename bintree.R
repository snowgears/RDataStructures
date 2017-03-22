
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

         ##do nothing--no storage bc that value already exists
         if(tree$mat[level,3] == val )
         {

            tree$nxt <- tree$nxt - 1
            tree$mat <- tree$mat[-newpos,]
            
            break
         }


         ##if our index is NA then set it because whatever got inserted is its child
         if(is.na(tree$mat[level,dir]))
         {
            tree$mat[newpos,3]<-val
            tree$mat[level,dir]<- newpos


            break

         }

         level <- tree$mat[level,dir]
         # print(level)



      }

   return(tree)
}





#takes the tree as a parameter and removes the smallest
pop.bintree <- function(tree)
{

   level <- 1

  

   while(TRUE)
   {
         ##traverse down
         if(!is.na(tree$mat[level,1]))
         {
            level <- tree$mat[level,1]
         }

         #found smallest
         else
         {
         
            tree$mat <- tree$mat[-level,,drop=F]

            

            #collect the values of the binary tree
            nodeList <- tree$mat[,3]


            #allocate new tree
            temp <- newbintree()
            
            #something left to reinsert into binary tree
            if(length(nodeList) > 0)
            {
               i<-1
                  while(length(nodeList) >= i)
                  {

                     temp <- push.bintree(temp,nodeList[i])

                     i <- i+1
                  }

            }
            
            

            break
         }

   }


   return(temp)


}




# print sorted tree via inorder traversal 
# pass in hdidx = 1 corresponding to root for first call
print.bintree <- function(hdidx,tree) { 
   left <- tree$mat[hdidx,1] 
   if (!is.na(left)) print.bintree(left,tree) 
   print(tree$mat[hdidx,3]) 
   right <- tree$mat[hdidx,2] 
   if (!is.na(right)) print.bintree(right,tree) 
} 



