\name{push.bintree}
\alias{push.bintree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    push.bintree()
%%  ~~function to do ... ~~
}
\description{
Puts item into the binary tree. The item automatically gets ordered within.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
push.bintree(inds, item)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inds}{ Input data structure.
%%     ~~Describe \code{inds} here~~
}
  \item{item}{ Input item
%%     ~~Describe \code{item} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns binary tree with the inserted item.
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
# Make binary tree
btree <- newbinarytree()
# Insert item
btree <- push(btree, 1)
}

