\name{pop.stack}
\alias{pop.stack}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pops the element on the top of the stack.
%%  ~~function to do ... ~~
}
\description{
Pops the element on the stack and sets the popped element to NA.
If the stack is empty, a warning is issued and the function stops.
Returns the value popped.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pop.stack(instack)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{instack}{ Input stack.
%%     ~~Describe \code{instack} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
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
# Create a stack
a <- newstack()
# Initalize some data
push(a, 1)
push(a, 2)
push(a, 3)
push(a, 4)
# pop the stack. 
pop(a) # prints 4
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
