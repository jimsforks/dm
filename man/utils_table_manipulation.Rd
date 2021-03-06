% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{head.zoomed_dm}
\alias{head.zoomed_dm}
\alias{tail.zoomed_dm}
\title{\pkg{utils} table manipulation methods for \code{zoomed_dm} objects}
\usage{
\method{head}{zoomed_dm}(x, n = 6L, ...)

\method{tail}{zoomed_dm}(x, n = 6L, ...)
}
\arguments{
\item{x}{object of class \code{zoomed_dm}}

\item{n}{an integer vector of length up to \code{dim(x)} (or 1,
    for non-dimensioned objects). Values specify the indices to be
    selected in the corresponding dimension (or along the length) of the
    object. A positive value of \code{n[i]} includes the first/last
    \code{n[i]} indices in that dimension, while a negative value
    excludes the last/first \code{abs(n[i])}, including all remaining
    indices. \code{NA} or non-specified values (when \code{length(n) <
      length(dim(x))}) select all indices in that dimension. Must
    contain at least one non-missing value.}

\item{...}{arguments to be passed to or from other methods.}
}
\value{
A \code{zoomed_dm} object.
}
\description{
Extract the first or last rows from a table.
Use these methods without the '.zoomed_dm' suffix (see examples).
The methods for regular \code{dm} objects extract the first or last tables.
}
\details{
see manual for the corresponding functions in \pkg{utils}.
}
\examples{
\dontshow{if (rlang::is_installed("nycflights13")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
zoomed <- dm_nycflights13() \%>\%
  dm_zoom_to(flights) \%>\%
  head(4)
zoomed
dm_insert_zoomed(zoomed, new_tbl_name = "head_flights")
\dontshow{\}) # examplesIf}
}
