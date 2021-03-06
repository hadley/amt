% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/track_capture_effect.R
\name{remove_capture}
\alias{remove_capture}
\alias{remove_capture_effect}
\alias{remove_capture_effect.track_xyt}
\title{Removes Capture Effects}
\usage{
remove_capture_effect(x, ...)

\method{remove_capture_effect}{track_xyt}(x, start, end, ...)
}
\arguments{
\item{x}{An object of class \code{track_xyt}.}

\item{...}{Further arguments, none implemented.}

\item{start}{A \code{lubirdate::Period}, indicating the time period to be removed at the beginning of the track.}

\item{end}{A \code{lubirdate::Period}, indicating the time period to be removed at the end of the track.}
}
\description{
Removing relocations at the beginning and/or end of a track, that fall within a user specified period.
}
\examples{
library(lubridate)
n <- 10
df <- track(
  x = cumsum(rnorm(n)),
  y = cumsum(rnorm(n)),
  t = ymd_hm("2017-01-01 00:00") +
   hours(seq(0, by = 24, length.out = n))
)

df
remove_capture_effect(df, start = days(1))
remove_capture_effect(df, end = days(2))
remove_capture_effect(df, start = days(1), end = days(2))

}
