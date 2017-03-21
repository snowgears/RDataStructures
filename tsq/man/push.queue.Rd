\name{push.queue}
\alias{push.queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pushes item onto the queue.
%%  ~~function to do ... ~~
}
\description{
Pushes an item onto the queue and changes the position of tail and the length.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
push.queue(inqueue, item)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inqueue}{ Queue which we are inserting items.
%%     ~~Describe \code{inqueue} here~~
}
  \item{item}{ Item we want to insert.
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
# Initalize the queue.
a <- queue()
# Insert items
a <- queue(a, 1)
a <- queue(a, 2)
a <- queue(a, 3)
# Check queue data directly
print(a$data)

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (inqueue, item) 
{
    inqueue$data[inqueue$tail] <- item
    inqueue$tail <- inqueue$tail + 1
    inqueue$length <- inqueue$length + 1
    return(inqueue)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
