% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_gameboy_img.R
\name{save_gameboy_png}
\alias{save_gameboy_png}
\title{Saving function for the gameboy plot}
\usage{
save_gameboy_png(plotvar = test, dpi = 300, name = "test_export")
}
\arguments{
\item{plotvar}{Name of the variable that stores your ggplot2 gameboy.}

\item{dpi}{Set export dpi.}

\item{name}{Filename of the export.}
}
\description{
This function saves your gameboy in your directory in a good width/height ratio.
}
\examples{
save_gameboy_png()
}
\keyword{gameboy}
\keyword{plot}
