#! /usr/bin/env Rscript

source('bintree.R')

btree <- newbintree()
#initialized as per specs
print(btree)


btree <- push.bintree(btree,7)
btree <- push.bintree(btree,5)
btree <- push.bintree(btree,10)
btree <- push.bintree(btree,8)

#deleting bottom of tree
btree <- pop.bintree(btree,8)
print(btree)

btree <- push.bintree(btree,8)
btree <- push.bintree(btree,11)

#deleting node with two children 

btree <- pop.bintree(btree,10)
print(btree)


#deleting root
btree <- pop.bintree(btree,7)
print(btree)

#deleting everything else
btree <- pop.bintree(btree,5)
btree <- pop.bintree(btree,8)
btree <- pop.bintree(btree,11)

print(btree)