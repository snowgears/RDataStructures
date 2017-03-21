\name{pop.bintree}
\alias{pop.bintree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pop.bintree(tree, val)
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
    level <- 1
    prevlevel <- 0
    while (TRUE) {
        if (val > tree$mat[level, 3]) {
            prevlevel <- level
            dir <- 2
            level <- tree$mat[level, 2]
        }
        if (val < tree$mat[level, 3]) {
            prevlevel <- level
            dir <- 1
            level <- tree$mat[level, 1]
        }
        if (val == tree$mat[level, 3]) {
            if (!is.na(tree$mat[level, 2])) {
                prevlevel <- level
                level <- tree$mat[level, 2]
                tree <- promote(tree, level, prevlevel, 2)
                break
            }
            else if (!is.na(tree$mat[level, 1])) {
                prevlevel <- level
                level <- tree$mat[level, 1]
                tree <- promote(tree, level, prevlevel, 1)
                break
            }
            else {
                tree$mat[prevlevel, dir] <- NA
                tree$mat <- tree$mat[-level, ]
                tree$nxt <- tree$nxt - 1
                return(tree)
            }
        }
    }
    return(tree)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
