% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Brick_functions.R
\name{Brick_list_tracked_bricks}
\alias{Brick_list_tracked_bricks}
\title{List all Bricks that have been created with .}
\usage{
Brick_list_tracked_bricks(detailed = FALSE, preserve.col.names = FALSE)
}
\arguments{
\item{detailed}{\strong{Optional}
If FALSE, produces a data.frame of file paths pointing to the
Brick objects. If TRUE, produces a tibble containing additional information
such as the bioc cache tracking id, and the creation, last accession and
modification times.}

\item{preserve.col.names}{\strong{Optional}
If TRUE, will preserve the original colnames from the bioc cache tibble
object. If FALSE, will attempt to humanize the colnames to improve
readability.}
}
\value{
Returns a data.frame or tibble containing the path to tracked
Brick objects. If tibble will contain additional information related to
the tracking. For details see parameter detailed.
}
\description{
\code{Brick_list_tracked_bricks} will list all Brick objects that are being
tracked.
}
\examples{
Brick_list_tracked_bricks()
}
