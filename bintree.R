
# storage is in a matrix, say m, one row per node of the tree; a link i 
# in the tree means the vector m[i,] = (u,v,w); u and v are the left and 
# right links, and w is the stored value; null links have the value NA; 
# the matrix is referred to as the list (m,nxt,inc), where m is the 
# matrix, nxt is the next empty row to be used, and inc is the number of 
# rows of expansion to be allocated when the matrix becomes full 

# initializes a storage matrix, with initial stored value firstval 
newbintree <- function()
{
   m <- matrix(rep(NA,3),nrow = 1, ncol =3)

   #since tree is initialized but empty we say that nxt is 0 
      #so that when push is called the first node is 1
      #bing bing bing bing bong

   return(list(mat=m,nxt=0))
}

push.bintree <-function(tree,val)
{
   # root <- tree$m[1,3]
   # ## do nothing 
   # if(val == root)
   # {
   #    return(tree)
   # }


   tree$nxt <- tree$nxt + 1
   # print(tree$nxt)
   #expand the tree sicne we are adding new node in 
   if(tree$nxt > nrow(tree$m))
   {
      print("Expanding the tree bing bing bing bong")
      tree$m <- rbind(tree$m,matrix(rep(NA,3),nrow=1,ncol=3))
   }
      

   #store the position in which the new node will be stored
   newpos <- tree$nxt
   print(newpos)   


   level <- 1

        #storing root
    if( newpos == 1)
    {
      tree$m[newpos,3]<-val
      return(tree)
    }

    #traverse tree and evaluate each node to see if it is eligible 

      while(TRUE)
      {
         ##do nothing--no storage bc that value already exists
         if(tree$m[level,3] == val )
         {

            tree$nxt <- tree$nxt - 1
            tree$m <- tree$m[-newpos,]
            
            break
         }


         ##go right 
         if(tree$m[level,3] < val )
         {
            dir <- 2
         }

         ##go left
         if(tree$m[level,3] > val)
         {
            dir <- 1
         }


         ##if our index is NA then set it because whatever got inserted is its child
         if(is.na(tree$m[level,dir]))
         {
            tree$m[newpos,3]<-val
            tree$m[level,dir]<- newpos

            break

         }

         level <- tree$m[level,dir]
         print(level)



      }

   print(tree$m)
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

#             if(!is.na(tree$m[level,1]))
#             {
#                if( tree$m[level,1] == vallevel)
#                {
#                     if(!is.na(tree$m[vallevel,otheridx]))
#                      {
#                         ##decrement because there will be less values in the matrix 
#                          tree$m[level,1] <- tree$m[vallevel,otheridx]-1
                  
              
#                      }
#                      else
#                      {
#                         tree$m[level,1] <- tree$m[vallevel,index]
#                      }
#                }
#             }




# }
pop.bintree <- function(tree,val)
{
   #traverse matrix to find the appropriate level

   level <- 1
   vallevel<- 0

   nodeList <- tree$m[,3]
   print("Original list")
   print(nodeList)
   while(level <= nrow(tree$m))
   {
      if( tree$m[level,3] == val)
      {
               vallevel <- level
               break;
      }

      level <- level+1
   }

   if(vallevel != 0)
   {
      nodeList<-nodeList[-vallevel]
      listsize<-length(nodeList)
      print("Modified list")
      print(nodeList)
      print(listsize)

         tree <- newbintree()

         level <- 1
         while(level <= listsize)
         {

            #store everythign back in 
            tree<-push.bintree(tree,nodeList[level])

            level<-level+1
         
         }

         # tree$m <- tree$m[-vallevel,]
         # tree$nxt <- tree$nxt-1
         
   }
   # print(tree$m)
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




            # if(!is.na(tree$m[level,1]))
            # {
            #    if( tree$m[level,1] == vallevel)
            #    {
            #         if(!is.na(tree$m[vallevel,2]))
            #          {
            #             ##decrement because there will be less values in the matrix 
            #              tree$m[level,1] <- tree$m[vallevel,2]-1
                  
              
            #          }
            #          else
            #          {
            #             tree$m[level,1] <- tree$m[vallevel,1]
            #          }
            #    }
            # }

            # if(!is.na(tree$m[level,2]))
            # {

            #    if(tree$m[level,2] == vallevel)
            #    {
            #       if(!is.na(tree$m[vallevel,1]))
            #          {
            #              tree$m[level,2] <- tree$m[vallevel,1]-1
                  
              
            #          }
            #       else
            #       {
            #             tree$m[level,2] <- tree$m[vallevel,2]
            #       }
                  
            #    }
            # }
