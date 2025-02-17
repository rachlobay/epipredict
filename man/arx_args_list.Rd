% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arx_forecaster.R
\name{arx_args_list}
\alias{arx_args_list}
\title{ARX forecaster argument constructor}
\usage{
arx_args_list(
  lags = c(0, 7, 14),
  ahead = 7,
  min_train_window = 20,
  levels = c(0.05, 0.95),
  intercept = TRUE,
  symmetrize = TRUE,
  nonneg = TRUE,
  quantile_by_key = FALSE
)
}
\arguments{
\item{lags}{Vector or List. Positive integers enumerating lags to use
in autoregressive-type models.}

\item{ahead}{Integer. Number of time steps ahead of the forecast date
for which forecasts should be produced.}

\item{min_train_window}{Integer. The minimal amount of training
data needed to produce a forecast. If smaller, the forecaster will return
\code{NA} predictions.}

\item{levels}{Vector or \code{NULL}. A vector of probabilities to produce
prediction intervals. These are created by computing the quantiles of
training residuals. A \code{NULL} value will result in point forecasts only.}

\item{intercept}{Logical. The default \code{TRUE} includes intercept in the
forecaster.}

\item{symmetrize}{Logical. The default \code{TRUE} calculates
symmetric prediction intervals.}

\item{nonneg}{Logical. The default \code{TRUE} enforeces nonnegative predictions
by hard-thresholding at 0.}

\item{quantile_by_key}{Not currently implemented}
}
\value{
A list containing updated parameter choices.
}
\description{
Constructs a list of arguments for \code{\link[=arx_forecaster]{arx_forecaster()}}.
}
\examples{
arx_args_list()
arx_args_list(symmetrize = FALSE)
arx_args_list(levels = c(.1, .3, .7, .9), min_train_window = 120)
}
