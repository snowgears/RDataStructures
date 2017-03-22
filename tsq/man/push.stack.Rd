\name{push.stack}
\alias{push.stack}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Pushes item onto the top of the stack.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
push.stack(inds, item)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inds}{ Input stack
%%     ~~Describe \code{inds} here~~
}
  \item{item}{ Item to be put on the stack
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
# Initalizes stack
a <- newstack()
# Input item onto the stack
push(a, 1)
push(a, 1000)
# Print stack
print(a)

}
