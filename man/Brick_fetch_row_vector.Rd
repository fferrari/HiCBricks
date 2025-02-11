% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Brick_functions.R
\name{Brick_fetch_row_vector}
\alias{Brick_fetch_row_vector}
\title{Return row or col vectors.}
\usage{
Brick_fetch_row_vector(Brick, chr1, chr2, by = c("position", "ranges"),
    vector, regions = NULL, force = FALSE, flip = FALSE, FUN = NULL)
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

\item{by}{\strong{Required}.
One of two possible values, "position" or "ranges". A one-dimensional
numeric vector of length 1 specifying one of either position or ranges.}

\item{vector}{\strong{Required}.
If by is position, a 1 dimensional numeric vector containing the rows to be
extracted is expected. If by is ranges, a 1 dimensional character vector
containing the names of the bintable is expected.
This function does not do overlaps. Rather it returns any given row or
column based on their position or names in the bintable.}

\item{regions}{\strong{Optional}. Default NULL
A character vector of length vector is expected. Each element must be of the
form chr:start:end. These regions will be converted back to their original
positions and the corresponding rows will be subsetted by the corresponding
region element. If the length of regions does not match, the subset
operation will not be done and all elements from the rows will be returned.}

\item{force}{\strong{Optional}. Default FALSE
If true, will force the retrieval operation when matrix contains loaded
data until a certain distance.}

\item{flip}{\strong{Optional}. Default FALSE
If present, will flip everything. This is equivalent to selecting columns,
and subsetting on the rows.}

\item{FUN}{\strong{Optional}. Default NULL
If provided a data transformation with FUN will be applied before the matrix
is returned.}
}
\value{
Returns a list of length vector. Each list element will be of length
chr2 binned length or if regions is present the corresponding region length.
This may differ based on the operations with FUN.
}
\description{
\code{Brick_fetch_row_vector} will fetch any given rows from a matrix. If
required, the rows can be subsetted on the columns and transformations
applied. Vice versa is also true, wherein columns can be retrieved and
rows subsetted.
}
\examples{

Coordinate <- c("chr19:1:40000","chr19:40001:80000")
Brick.file <- system.file("extdata", "test.hdf", package = "HiCBricks")
Test_Run <- Brick_fetch_row_vector(Brick = Brick.file,
chr1 = "chr19", chr2 = "chr19", by = "ranges", vector = Coordinate,
regions = c("chr19:1:1000000", "chr19:40001:2000000"))

}
\seealso{
\code{\link{Brick_get_matrix_within_coords}} to get matrix by
using matrix genomic coordinates, \code{\link{Brick_get_values_by_distance}}
to get values separated at a certain distance,
\code{\link{Brick_fetch_row_vector}} to get values in a certain row/col and
subset them, \code{\link{Brick_get_matrix}} to get matrix by using
matrix coordinates.
}
