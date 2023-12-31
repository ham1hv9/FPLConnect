% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_to_EDP.R
\name{connect_to_EDP}
\alias{connect_to_EDP}
\title{Connect to EDP on AWS}
\usage{
connect_to_EDP(user, password)
}
\arguments{
\item{user}{A Character String, The User ID/SLID that needed to connect to EDP.}

\item{password}{A Character String, User's Password needed to Authenticate and
connect to the EDP database.}
}
\value{
Returns A connection string of user ID and password to AWS which allows a user access to the EDP database.
 Must have packages DBI and odbc installed in your Library.
}
\description{
Connect to EDP on AWS
}
\examples{
con <- connect_to_EDP(user, password)
}
