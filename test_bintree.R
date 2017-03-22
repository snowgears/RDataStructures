#! /usr/bin/env Rscript

source('bintree.R')

btree <- newbintree()
#initialized as per specs
print(btree)

print("Testing push--right balanced tree")
btree <- push.bintree(btree,1)
btree <- push.bintree(btree,2)
btree <- push.bintree(btree,3)
btree <- push.bintree(btree,4)
btree <- push.bintree(btree,5)
btree <- push.bintree(btree,6)
btree <- push.bintree(btree,7)
print(btree)

print("Testing pop--Empyting out tree with pop")
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)

print("Testing push--left balanced tree")
btree <- push.bintree(btree,7)
btree <- push.bintree(btree,6)
btree <- push.bintree(btree,5)
btree <- push.bintree(btree,4)
btree <- push.bintree(btree,3)
btree <- push.bintree(btree,2)
btree <- push.bintree(btree,1)
print(btree)


print("Testing pop--Empyting out tree with pop")
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)


print("Testing push--staggered tree")
btree <- push.bintree(btree,7)
btree <- push.bintree(btree,4)
btree <- push.bintree(btree,6)
btree <- push.bintree(btree,5)
btree <- push.bintree(btree,10)
btree <- push.bintree(btree,8)
btree <- push.bintree(btree,11)
print(btree)



print("Testing pop--Empyting out tree with pop")
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)
btree <- pop.bintree(btree)
print(btree)

# #deleting bottom of tree
# print("Deleting the root from tree")
# btree <- delete.bintree(btree,7)
# print(btree)

#deleting node with two children 

# print("Deleting node with two children")

# btree <- delete.bintree(btree,10)
# print(btree)


# #deleting root
# print("Deleting the bottom of the tree")
# btree <- delete.bintree(btree,11)
# print(btree)

#deleting minimum value
#emptying tree via pop
