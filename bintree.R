
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
         # print(level)



      }

   # print(tree$mat)
   return(tree)
}

# level refers to the current child's level and prevlevel refers to its parent
#dir refers to the direction traversed right (corresponding to 2) or left (corresponding to 1)
promote <- function(  tree , level, prevlevel, dir )
{

   while(TRUE)
   {
      # print("At level ")
      # print(level)
      # print("Prev level ")
      # print(prevlevel)
      # print("Direciton traversed")
      # print(dir)

      #       print("Right gets promoted")
            tree$mat[prevlevel,3] <- tree$mat[level,3]
            tree$mat[prevlevel,dir] <- tree$mat[prevlevel,dir]-1

            # print(tree$mat[prevlevel,])

            
           

            #go to right child if exists

            if(!is.na(tree$mat[level,2])) 
               {
                   #store current as previous 
                  prevlevel <- level
                  level <- tree$mat[level,2]
                  dir <- 2

               }
            #go to left child if exits 
            else if(!is.na(tree$mat[level,1])) 
               {
                  #store current as previous 
                  prevlevel <- level
                  level <- tree$mat[level,1]
                  dir <- 1
               }


            #bottom of the tree-- nothing left to promote 
            else
            {
               # print("bottom of tree with ")
               # print(tree$mat[level,3])
               # print("Level")
               # print(level)
               # print("prevlevel")
               # print(prevlevel)
               tree$mat[prevlevel,dir] <- NA
               # print(tree$mat)
               #delete this we already promoted it
               tree$mat <- tree$mat[-level,]
               tree$nxt <- tree$nxt-1
               return(tree)
            }

            

            


   }
  

}


#uses the helper promote in order to bring children up once their parent is deleted
#right child takes precedence over the left
#dir corresponds to the direction taken (right or left) in order to get to the current node


pop.bintree <- function(tree,val)
{
   #traverse matrix to find the appropriate level

   level <- 1
   prevlevel<- 0

   while(TRUE)
   {
      # print("Top of loop")
      #greater than so we go down right 
      if( val > tree$mat[level, 3])
      {
         # print("Right traversal")
         #  print("update prevlevel")

         prevlevel <- level
         dir <- 2
         
         level <- tree$mat[level,2]
               #store the index of the previous level (need to maintain parent)

      }

      #less than so we go down left 
      if ( val < tree$mat[level,3])
      {
         # print("Left traversal")
         #       print("update prevlevel")

         prevlevel <- level

         dir <- 1

         level <- tree$mat[level,1]
      }

      #found our value
      if ( val == tree$mat[level, 3])
      {

            # print("Found val at level : ")
            # print(level)
            # print("Previous level :")
            # print(prevlevel)


            #go right -- right takes precedence 

            if(!is.na(tree$mat[level,2]))
             {

                     
                     
                     #if(!is.na(tree$mat[prevlevel,1])) tree$mat[prevlevel,1] <- tree$mat[prevlevel,1]-1

                     # print(tree$mat[prevlevel,])
                     
                     #store current as previous 
                     prevlevel <- level

                     #go to right child
                     level <- tree$mat[level,2]






                     #bring right child up
                     tree <- promote(tree, level, prevlevel,2)
                     #tree$mat <- tree$mat[-level,]
                     break
          
            }

           #go left--no right child

            else if(!is.na(tree$mat[level,1]))
             {
                     
                     # print(tree$mat[prevlevel,])

                     #store current as previous 
                     prevlevel <- level

                     #go to left child
                     level <- tree$mat[level,1]
                     # print(tree$mat[prevlevel,])
                     

                     tree <- promote(tree, level, prevlevel, 1)
                     
                     break
       

                   
               
            }

         #tree consists of one node
         else
         {
            # print("bottom of tree with ")
            # print(tree$mat[level,3])
            tree$mat[prevlevel,dir] <- NA

            #delete this we already promoted it
            tree$mat <- tree$mat[-level,]
            tree$nxt <- tree$nxt-1
            return(tree)

         }
      

      }


   }


   return(tree)

}


# print sorted tree via inorder traversal 
# pass in hdidx = 1 corresponding to root for first call
print.bintree <- function(hdidx,tree) { 
   left <- tree$mat[hdidx,1] 
   if (!is.na(left)) printtree(left,tree) 
   print(tree$mat[hdidx,3]) 
   right <- tree$mat[hdidx,2] 
   if (!is.na(right)) printtree(right,tree) 
} 



