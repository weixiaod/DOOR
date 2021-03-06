% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_door_summary.R
\name{get_door_summary}
\alias{get_door_summary}
\title{Get DOOR summary}
\usage{
get_door_summary(data, tx, outcome)
}
\arguments{
\item{data}{dataframe, data set that contains the raw data}

\item{tx}{character, name of the treatment assignment indicator variable}

\item{outcome}{character, name of the categorical DOOR variable}
}
\value{
summary table with the number of participants by door outcome and treatment group
}
\description{
This function calculates the DOOR summary
}
\examples{
set.seed(123)
N <- 26
seq <- rep(c("A", "B"), each = N/2)
DOOR <- sample(1:4, size = N, replace = TRUE)
data <- data.frame(seq, DOOR)
get_door_summary(data, "seq", "DOOR")

}
\references{
Evans, S. R., Rubin, D., Follmann, et. al. (2015). Desirability of outcome ranking (DOOR) and response adjusted for duration of antibiotic risk (RADAR). Clinical Infectious Diseases, 61(5), 800-806.
}
