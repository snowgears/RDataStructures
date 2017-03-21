\name{queue}
\alias{queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    Creates a queue data structure.
%%  ~~function to do ... ~~
}
\description{
Initalizes a queue data structure. The queue is a FIFO data structure which supports
two operations; push and pop.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
queue()
}
%- maybe also 'usage' for other objects documented here.
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

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function () 
{
    rtrn <- list()
    class(rtrn) <- "queue"
    rtrn$head <- 1
    rtrn$tail <- 1
    rtrn$length <- 0
    rtrn$data <- vector()
    rtrn$data[1] <- NA
    return(rtrn)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
