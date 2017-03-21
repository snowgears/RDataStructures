\name{push.bintree}
\alias{push.bintree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
push.bintree(tree, val)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
%%     ~~Describe \code{tree} here~~
}
  \item{val}{
%%     ~~Describe \code{val} here~~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (tree, val) 
{
    tree$nxt <- tree$nxt + 1
    if (tree$nxt > nrow(tree$mat)) {
        tree$mat <- rbind(tree$mat, matrix(rep(NA, 3), nrow = 1, 
            ncol = 3))
    }
    newpos <- tree$nxt
    level <- 1
    if (newpos == 1) {
        tree$mat[newpos, 3] <- val
        return(tree)
    }
    while (TRUE) {
        if (tree$mat[level, 3] == val) {
            tree$nxt <- tree$nxt - 1
            tree$mat <- tree$mat[-newpos, ]
            break
        }
        if (tree$mat[level, 3] < val) {
            dir <- 2
        }
        if (tree$mat[level, 3] > val) {
            dir <- 1
        }
        if (is.na(tree$mat[level, dir])) {
            tree$mat[newpos, 3] <- val
            tree$mat[level, dir] <- newpos
            break
        }
        level <- tree$mat[level, dir]
    }
    return(tree)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
