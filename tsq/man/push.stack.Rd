\name{push.stack}
\alias{push.stack}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pushes data onto the stack.
%%  ~~function to do ... ~~
}
\description{
Puts data onto the top of the stack. Data is appeneded to the stack. Noting is returned.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
push.stack(instack, item)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{instack}{ Input stack
%%     ~~Describe \code{instack} here~~
}
  \item{item}{ Item top be inserted
%%     ~~Describe \code{item} here~~
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
# Insert some data
push(a, 1)
push(a, 2)
push(a, 3)
# Pop the item on top of the stack. Expect 3 to be printed
pop(a)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
