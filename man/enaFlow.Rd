% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enaFlow.R
\name{enaFlow}
\alias{enaFlow}
\title{Analyses of Ecological Networks}
\usage{
enaFlow(x, zero.na = TRUE, balance.override = FALSE)
}
\arguments{
\item{x}{a network object.  This includes all weighted flows into and out of
each node.}

\item{zero.na}{LOGICAL: should NA values be converted to zeros.}

\item{balance.override}{Flow analysis assumes the network model is at
steady-state (inputs = outputs).  Setting balance.override = TRUE allows the
function to be run on unbalanced models.}
}
\value{
\item{T}{vector of node throughflows total amount of
energy-matter flowing into or out of each node} 
\item{G}{matrix of
the output oriented direct flow intensities} 
\item{GP}{matrix of
the input oriented direct flow intensities} 
\item{N}{matrix of the
ouput oriented integral (boundary+direct+indirect) flow
intensities} 
\item{NP}{matrix of the input oriented integral flow
intensities} 
\item{TCC}{matrix of total contribution coefficients
(Szyrmer & Ulanowicz 1987).  The elements of TCC indicate the
fraction of total output of i which reaches j} 
\item{TDC}{matrix of
total dependency coefficients (Szyrmer & Ulanowicz 1987).  The
elements of TDC indicate the fraction j's total consuption which
passes through i} 
\item{ns}{vector of flow based network
statistics.  These include "Boundary" the total input into or
output from the system, "TST" the total system throughflow, "TSTp"
total system throughPUT,"APL" is the network aggradation
TST/Boundary which is also called average path length, "FCI" (Finn
Cycling Index) is a metric of the amount of cycling in a system,
"BFI" is the boundary flow intensity Boundary/TST, "DFI" is the
direct flow intensity Direct/TST, "IFI" is the indirect flow
intensity Indirect/TST, "ID.F" is the realized indirect to direct
flow intensity, "ID.F.I" is the input idealized indirect flow
intensity, "id.F.O"is the output idealized indirect flow intensity,
"HMG.I" is the input network homogenization, "HMG.O" is the output
network homogenization, "AMP.I" is the strong measure of input
network amplifiation, "AMP.O" is the strong measure of output
network amplification, "mode0.F" is the boundary flow - flow that
reaches a compartment from across the system boundary, "mode1.F" is
internal first passage flow, "mode2.F" is cycled flow, "mode3.F" is
the dissipative eqivalent to mode2, and "mode4.F" is the
dissipative equivalent ot mode0.}
}
\description{
Performs the primary throughflow analysis developed for
input-output systems.  It returns a vector of throughflows, the
input and output oriented matrices for "direct flow intensities"
and "integral flow intensities", and a set of flow based network
statistics.
}
\examples{



data(troModels)
F = enaFlow(troModels[[6]])  # completes the full analysis
F$ns  # returns just the network statisics



}
\references{
Borrett, S. R., Freeze, M. A., 2011. Reconnecting environs to
their environment. Ecol. Model. 222, 2393-2403.

Fath, B. D., Borrett, S. R. 2006. A Matlab function for Network Environ
Analysis.  Environ. Model. Softw. 21, 375-405.

Fath, B. D., Patten, B. C., 1999. Review of the foundations of network
environ analysis. Ecosystems 2, 167-179.

Finn, J. T., 1976. Measures of ecosystem structure and function derived from
analysis of flows. J. Theor. Biol. 56, 363-380.

Patten, B.C. Higashi, M., Burns, T. P. 1990. Trophic dynamics in ecosystem
networks: significance of cycles and storage.  Ecol. Model. 51, 1-28.

Schramski, J. R., Kazanci, C., Tollner, E. W., 2011. Network environ theory,
simulation and EcoNet 2.0. Environ. Model. Softw. 26, 419-428.

Szyrmer, J., Ulanowicz, R. E., 1987. "Total Flows in Ecosystems". Ecol. Mod. 35:123-136.

Ulanowicz, R.E., 2004. Quantitative methods for ecological network analysis.
Comput. Biol. Chem. 28, 321-33

Ulanowicz, R.E., Holt, R.D., Barfield, M., 2014. Limits on ecosystem trophic
complexity: insights from ecological network analysis.  Ecology Letters
17:127-136.
}
\seealso{
\code{\link{read.scor},\link{read.wand},\link{enaStorage},\link{enaUtility}}
}
\author{
Matthew K. Lau Stuart R. Borrett
}
