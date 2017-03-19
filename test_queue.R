#! /usr/bin/env Rscript

source('queue.R')

a <- queue()

# inserting values
print("Inserting values 1 to 9")
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
