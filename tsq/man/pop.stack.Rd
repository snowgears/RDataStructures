\name{pop.stack}
\alias{pop.stack}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Pops the item at the top of the stack.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pop.stack(inds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inds}{ Input stack
%%     ~~Describe \code{inds} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns the item at the top of the stack.
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
# Create stack.
a <- newstack()
# Insert items
push(a, 1)
push(a, 2)
# Print before pop
print(a)
# Pops stack
pop(a)
# Print stack after pop
print(a)


