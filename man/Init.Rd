% Generated by roxygen2 (4.0.1): do not edit by hand
\name{Init}
\alias{Init}
\title{Initialize the Google Analytics query parameters}
\usage{
Init(start.date = NULL, end.date = NULL, dimensions = NULL,
  metrics = NULL, filters = NULL, sort = NULL, segments = NULL,
  max.results = NULL, start.index = NULL, table.id = NULL)
}
\arguments{
\item{start.date}{Start Date for fetching Analytics Data.
Start Date must be of the format "\%Y-\%m-\%d"}

\item{end.date}{End Date for fetching Analytics Data.
End Date must be of the format "\%Y-\%m-\%d"}

\item{dimensions}{Optional. A vector of up to 7 dimensions, either as a single string or a vector or strings, E.g.
                 "ga:source,ga:medium" or c("ga:source", "ga:medium").}

\item{metrics}{A vector of up to 10 metrics, either as a single string or a vector or strings. E.g.
               "ga:sessions" or c("ga:sessions", "ga:bounces").}

\item{sort}{Optional.The sorting order for the data to be returned.e.g. "ga:sessions" or c("ga:sessions", "-ga:browser")}

\item{filters}{Optional.The filter string for the GA request.e.g. "ga:medium==referral".}

\item{segments}{Optional.An advanced segment definition to slice and dice your
           Analytics data.}

\item{max.results}{Optional.Maximum Number of rows to include in the query response. Default value is
10000}

\item{table.id}{Profile ID of the form ga:XXXXX where XXXXX is the Analytics View (Profile) ID of
for which the query will retrieve the data. The View ID can be found under View Settings by navigating
to the Admin Tab under your Google Analytics Profile}

\item{start.index}{Optional.The first row of data to retrieve. Default value is 1}
}
\value{
List of all the Query Parameters initialized by the user
}
\description{
This function takes all the query parameters and combines them into a single list that
is to be passed as an argument to \code{\link{QueryBuilder}}. Note that parameter validation is
performed when the \code{\link{QueryBuilder}} object is created
}
\seealso{
Valid Combinations of Dimensions and Metrics can be found at  \url{http://code.google.com/apis/analytics/docs/gdata/gdataReferenceDimensionsMetrics.html#validCombinations}
}

