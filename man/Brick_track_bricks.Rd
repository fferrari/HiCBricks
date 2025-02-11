% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Brick_functions.R
\name{Brick_track_bricks}
\alias{Brick_track_bricks}
\title{Check if a Brick is being tracked.}
\usage{
Brick_track_bricks(Brick)
}
\arguments{
\item{Brick}{\strong{required}
Path to the Brick file to track.}
}
\value{
Returns a named vector containing the path to the file along with
the bioc Cache id as its name.
}
\description{
\code{Brick_track_bricks} will start tracking the provided Brick file.
}
\examples{
Brick.file <- system.file("extdata", "test.hdf", package = "HiCBricks")
if(Brick_is_tracked(Brick.file)) {
    Brick_untrack_brick(Brick = Brick.file)
    Brick_track_bricks(Brick = Brick.file)
}else{
    Brick_track_bricks(Brick = Brick.file)
}
}
