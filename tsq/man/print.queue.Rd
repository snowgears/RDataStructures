\name{print.queue}
\alias{print.queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Prints the queue data structure. Only prints items which are still in the queue.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
print.queue(inqueue)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inqueue}{ Input queue.
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
# Make new queue
a <- newqueue()
# Push items onto queue
push(a, 1)
push(a, 2)
push(a, 3)
# Print queue
print(a)
}
