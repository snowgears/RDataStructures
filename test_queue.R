#! /usr/bin/env Rscript

source('queue.R')

a <- queue()

# inserting values
cat("Inserting values 1 to 9\n")
a <- push.queue(a, 1)
a <- push.queue(a, 2)
a <- push.queue(a, 3)
a <- push.queue(a, 4)
a <- push.queue(a, 5)
a <- push.queue(a, 6)
a <- push.queue(a, 7)
a <- push.queue(a, 8)
a <- push.queue(a, 9)

print(a)

cat("\nExpect head = 1 and tail = 10\n")
print(a$head)
print(a$tail)
print(a$length)

cat("\nPoping first value")
cat("Expect head = 2 and tail = 10 after pop\n")
tmp <- pop.queue(a)
print(a$head)
print(a$tail)
print(a$length)

cat("\nAttempting to print poped value in queue. Expected NA\n")
print(a$data[1])


cat("\nPoping all values\n")
for (i in 1:8) {
    tmp <- pop.queue(a)
}
cat("Expecting head = 10 and tail = 10 after all pops\n")
print(a$head)
print(a$tail)
print(a$length)

print(a$data[10])
