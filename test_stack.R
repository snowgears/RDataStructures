#! /usr/bin/env Rscript

source('stack.R')

a <- stack()

# inserting values
cat("Inserting values 1 to 9")
a <- push.stack(a, 1)
a <- push.stack(a, 2)
a <- push.stack(a, 3)
a <- push.stack(a, 4)
a <- push.stack(a, 5)
a <- push.stack(a, 6)
a <- push.stack(a, 7)
a <- push.stack(a, 8)
a <- push.stack(a, 9)

print(a)

cat("\nExpect top = 10\n")
print(a$top)
print(a$length)

cat("\nPopping first value")
cat("Expect top = 9 after pop\n")
tmp <- pop.stack(a)
print(a$top)
print(a$length)

cat("\nPopping all values\n")
for (i in 1:8) {
    tmp <- pop.stack(a)
}
cat("Expecting top = 1 after all pops\n")
print(a$top)
print(a$length)

print(a)
