\name{pop.queue}
\alias{pop.queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Pops the item off the head of the queue and sets it to NA.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pop.queue(inds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inds}{ Input queue.
%%     ~~Describe \code{inds} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns item popped off the head of the queue.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Create queue
a <- newqueue()
# Insert items
push(a, 1)
push(a, 2)
push(a, 3)
# Pop off first item and print
print(pop(a))
# Print data structure
print(a)
#Repeat
print(pop(a))
print(a)