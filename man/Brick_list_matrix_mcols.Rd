% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Brick_functions.R
\name{Brick_list_matrix_mcols}
\alias{Brick_list_matrix_mcols}
\title{List the matrix metadata columns in the Brick store.}
\usage{
Brick_list_matrix_mcols(Brick, chr1, chr2)
}
\arguments{
\item{Brick}{\strong{Required}.
A string specifying the path to the Brick store created with CreateBrick.}

\item{chr1}{\strong{Required}.
A character vector of length 1 specifying the chromosome corresponding to
the rows of the matrix}

\item{chr2}{\strong{Required}.
A character vector of length 1 specifying the chromosome corresponding to
the columns of the matrix}
}
\value{
Returns a vector containing the names of all matrix metadata columns
}
\description{
\code{Brick_get_matrix_mcols} will list the names of all matrix metadata
columns.
}
\examples{
Brick.file <- system.file("extdata", "test.hdf", package = "HiCBricks")
Brick_list_matrix_mcols(Brick = Brick.file, chr1 = "chr19", chr2 = "chr19")
}
