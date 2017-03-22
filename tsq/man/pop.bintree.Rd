\name{pop.bintree}
\alias{pop.bintree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    pop.bintree()
%%  ~~function to do ... ~~
}
\description{
Pop function for the binary tree. Finds the smallest item in the tree and pops it.
Removes the item after popping.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pop.bintree(inds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inds}{
%%     ~~Describe \code{inds} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns the smallest item in the tree.
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
btree <- newbintree()
# Push in some data
btree <- push(btree, 1)
btree <- push(btree, 2)
btree <- push(btree, 3)
# Print btree
print(bitem)
# Pop item
btree <- pop(btree)
# print new tree
print(btree)
