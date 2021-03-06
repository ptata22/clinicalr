% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blood_pressure.R
\name{calculate_pulse_pressure}
\alias{calculate_pulse_pressure}
\title{Calculate pulse pressure}
\usage{
calculate_pulse_pressure(sbp, dbp)
}
\arguments{
\item{sbp}{Systolic blood pressure (mmHg).}

\item{dbp}{Diastolic blood pressure (mmHg).}
}
\value{
Pulse pressure (mmHg).
}
\description{
The pulse pressure is calculated using the formula: \eqn{P_\text{pulse} =
P_{\text{systolic}} - P_{\text{diastolic}}}.
}
\section{Caveats}{
 None at this time.
}

\references{
None.
}
\seealso{
\code{\link[units]{set_units}}, \code{\link[units]{drop_units}}
}
