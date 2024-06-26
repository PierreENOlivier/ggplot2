% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities-resolution.R
\name{resolution}
\alias{resolution}
\title{Compute the "resolution" of a numeric vector}
\usage{
resolution(x, zero = TRUE, discrete = FALSE)
}
\arguments{
\item{x}{numeric vector}

\item{zero}{should a zero value be automatically included in the
computation of resolution}

\item{discrete}{should vectors mapped with a discrete scale be treated as
having a resolution of 1?}
}
\description{
The resolution is the smallest non-zero distance between adjacent
values.  If there is only one unique value, then the resolution is defined
to be one. If x is an integer vector, then it is assumed to represent a
discrete variable, and the resolution is 1.
}
\examples{
resolution(1:10)
resolution((1:10) - 0.5)
resolution((1:10) - 0.5, FALSE)

# Note the difference between numeric and integer vectors
resolution(c(2, 10, 20, 50))
resolution(c(2L, 10L, 20L, 50L))
}
