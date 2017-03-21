\name{print.queue}
\alias{print.queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Prints the queue data strcutre.
%%  ~~function to do ... ~~
}
\description{
Prints the values currently stored in the queue. If there are no elements in the queue, NA will be printed.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
print.queue(inqueue)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inqueue}{ Queue to be inputed.
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
# Initalize queue.
a <- queue()
# insert 3 elements into queue.
a <- queue.push(a, 1)
a <- queue.push(a, 1)
a <- queue.push(a, 1)
# Print out queue. Expect (1, 1, 1)
print(a)

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (inqueue) 
{
    if (inqueue$head == inqueue$tail) 
        queue_idx = inqueue$head
    else queue_idx = inqueue$head:(inqueue$tail - 1)
    print(inqueue$data[queue_idx])
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
