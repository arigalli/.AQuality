\name{data}
\alias{data}
\docType{data}
\title{
Data Sets
}
\description{
Data.frame with data for testing the TSSS() (total soluble solids sumatory) function. 
Column 1: sample identification code. Column 2: measurement of total soluble solids. 
Column3 onwards: measurement of chemical components of chemical components of water 
expressed in the same units as column 2.
}
\usage{data("data")}
\format{
  A data frame with 411 observations on the following 16 variables.
  \describe{
    \item{\code{codigo}}{a character vector}
    \item{\code{solidostotales}}{a numeric vector}
    \item{\code{cloruro}}{a numeric vector}
    \item{\code{carbonato}}{a numeric vector}
    \item{\code{bicarbonato}}{a numeric vector}
    \item{\code{fosfato}}{a numeric vector}
    \item{\code{nitrato}}{a numeric vector}
    \item{\code{nitrito}}{a numeric vector}
    \item{\code{fluoruro}}{a numeric vector}
    \item{\code{arsenico}}{a numeric vector}
    \item{\code{amonio}}{a numeric vector}
    \item{\code{sulfato}}{a numeric vector}
    \item{\code{sodio}}{a numeric vector}
    \item{\code{tkn}}{a numeric vector}
    \item{\code{calcio}}{a numeric vector}
    \item{\code{magnesio}}{a numeric vector}
  }
}
\examples{
# Including data.frame: data in workspace.
data("data")
# Column names of data.frame: data
names(data) 
# Data set type of columns of data.frame: data.
str(data)
# Visualization of sample A45
#The following code should display a graphic with all samples in green dots and sample
# A45 as red big dot
TSSS("A45",data)
}
\keyword{datasets}
