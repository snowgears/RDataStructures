\name{print.stack}
\alias{print.stack}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Prints stack.
%%  ~~function to do ... ~~
}
\description{
Prints the elements in the stack. If the stack is empty, than nothing is outputed.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
print.stack(instack)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{instack}{ Input stack
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
# Initalize stack
a <- newstack()
# Prints empty stack. Nothing is outputted
print(a)
# input some data.
push(a, 1)
push(a, 2)
push(a, 3)
# Prints out stack with data. Expected output: 1, 2 ,3
print(a)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
