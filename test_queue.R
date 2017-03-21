#! /usr/bin/env Rscript

source('queue.R')

a <- newqueue()

# inserting values
cat("Inserting values 1 to 9\n")
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

cat("\nExpect head = 1 and tail = 10\n")
print(a$head)
print(a$tail)
print(a$length)

cat("\nPoping first value")
cat("Expect head = 2 and tail = 10 after pop\n")
tmp <- pop(a)
print(a$head)
print(a$tail)
print(a$length)

cat("\nAttempting to print poped value in queue. Expected NA\n")
print(a$data[1])


cat("\nPoping all values\n")
for (i in 1:8) {
    tmp <- pop(a)
}
cat("Expecting head = 10 and tail = 10 after all pops\n")
print(a$head)
print(a$tail)
print(a$length)

cat("\nPrinting empty queue\n")
print(a)
