# The Marquardt-Levenberg algorithm is used to estimate the
# expectation and standard deviation of coefficients of a fifth-order
# polynomial model of the Sherman function of the thorium foil, as a
# function of the energy loss window, at a scattering energy of 20keV,
# based on the data in Burnett:1994:HER.  In Bayesian terms, this is
# equivalent to assuming a uniform prior probability distribution over
# these coefficients, a Gaussian shape for the final posterior
# probability distribution, a Gaussian shape for the likelihood
# function associated with each data point, and a zero prior
# probability for polynomial models of orders other than the fifth,
# the fifth order having been chosen to provide a number of adjustable
# parameters that is the largest integer less than or equal to half
# the number of data points. While the first assumption is reasonable,
# the second is \cite{MacKay:2002:ITI} the standard Laplace's method,
# and the third is reasonable given the unknown shape of the
# likelihood functions associated with the uncertainties quoted in
# \cite{Burnett:1994:HER}, the fourth sacrifices
# \cite{Jeffreys:1961:TP, MacKay:1992:BI, MacKay:1992:BMA}
# completeness of the analysis.  The dubious assumption is made to
# increase the computational simplicity, and can be defended on the
# grounds that the results are used to provide rough estimates of the
# Sherman function for use as a prior probability distribution in
# inference from the experiments with which this work is really
# concerned, and not to provide final conclusions.

set nokey
set size 1, 2
set pointsize 0.01
set style data errorbars

set terminal pslatex
set monochrome
set output 'HER_Sherman.tex'

set xlabel "$W/\\ut{fJ}$"
set ylabel "$S$"

plot 'HER_Sherman.dat' using ($1*1.6*10.0**(-4.0)):2:(sqrt(0.008**2.0+$3**2.0))

set terminal png
set monochrome
set output 'HER_Sherman.png'

set xlabel "W/fJ"
set ylabel "S"

plot 'HER_Sherman.dat' using ($1*1.6*10.0**(-4.0)):2:(sqrt(0.008**2.0+$3**2.0))
