#! /usr/bin/env Rscript

source('stack.R')

a <- newstack()

# inserting values
cat("Inserting values 1 to 9")
push(a, 1)
push(a, 2)
push(a, 3)
push(a, 4)
push(a, 5)
push(a, 6)
push(a, 7)
push(a, 8)
push(a, 9)

print(a)

cat("\nExpect top = 10\n")
print(a$top)
print(a$length)

cat("\nPopping first value\n")
cat("Expect top = 9 after pop\n")
tmp <- pop(a)
print(a$top)
print(a$length)

cat("\nPopping all values\n")
for (i in 1:8) {
    tmp <- pop(a)
}
cat("Expecting top = 1 after all pops\n")
print(a$top)
print(a$length)

cat("\nPrinting empty stack\n")
print(a)
