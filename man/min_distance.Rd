% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/min_distance.R
\name{min_distance}
\alias{min_distance}
\title{Minimum Distance Between Points}
\usage{
min_distance(
  cloud,
  distance = "euclidean",
  threads = 1L,
  verbose = FALSE,
  progress = FALSE,
  ...
)
}
\arguments{
\item{cloud}{A \code{data.table} with *XYZ* coordinates in the first three columns representing a point cloud.}

\item{distance}{Type of distance to calculate. \code{"euclidean"} as default. Look \code{hnsw_knn} for more options.}

\item{threads}{An \code{integer} specifying the number of threads to use for parallel processing. Experiment to see what works best for your data on your hardware.}

\item{verbose}{If TRUE, log messages to the console.}

\item{progress}{If TRUE, log a progress bar when \code{verbose = TRUE}. Tracking progress could cause a small overhead.}

\item{...}{Arguments passed to \code{hnsw_build} and \code{hnsw_search}.}
}
\value{
A \code{numeric} vector describing the minimum distance between points.
}
\description{
Estimate the minimum distance between points in a point cloud.
}
\examples{
data("pc_tree")

#Estimate the minimum distance of a sample o 100 points
min_distance(pc_tree)

}
\author{
J. Antonio Guzmán Q.
}
