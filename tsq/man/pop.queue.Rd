\name{pop.queue}
\alias{pop.queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pops the head of the queue.
%%  ~~function to do ... ~~
}
\description{
Takes in a queue and returns the head element. The element popped is then set to NA.
The variables head and length are modified internally.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pop.queue(inqueue)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inqueue}{ Queue to be popped.
%%     ~~Describe \code{inqueue} here~~
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
# Initalize queue
a <- queue()
# Insert 1, 2, 3 into queue
a <- queue(a, 1)
a <- queue(a, 2)
a <- queue(a, 3)
# Pop the head element of queue
x <- pop.queue(a)
# Print value for x. Expected to be 1
print(x)


##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (inqueue) 
{
    if (inqueue$length == 0) {
        warning("Error: Queue of length 0")
        stop()
    }
    else {
        element <- inqueue$data[inqueue$head]
        eval.parent(substitute(inqueue$data[inqueue$head] <- NA))
        eval.parent(substitute(inqueue$head <- inqueue$head + 
            1))
        eval.parent(substitute(inqueue$length <- inqueue$length - 
            1))
        return(element)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
