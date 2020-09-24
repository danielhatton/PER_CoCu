# The Marquardt-Levenberg algorithm is used to estimate the
# expectation and standard deviation of coefficients of a fifth-order
# polynomial model of the spin-averaged scattering probabiltity of the
# thorium foil, as a function of the energy loss window, at a
# scattering energy of 20keV, based on the data in Burnett:1994:HER.
# In Bayesian terms, this is equivalent to assuming a uniform prior
# probability distribution over these coefficients, a Gaussian shape
# for the final posterior probability distribution, a Gaussian shape
# for the likelihood function associated with each data point, and a
# zero prior probability for polynomial models of orders other than
# the fifth, the fifth order having been chosen to provide a number of
# adjustable parameters that is the largest integer less than or equal
# to half the number of data points. While the first assumption is
# reasonable, and the second is \cite{MacKay:2002:ITI} the standard
# Laplace's method, the third ignores the top-hat shape imposed on the
# likelihood functions by the rounding procedure used in reading from
# the graph, the fourth sacrifices \cite{Jeffreys:1961:TP,
# MacKay:1992:BI, MacKay:1992:BMA} completeness of the analysis.  The
# dubious assumption is made to increase the computational simplicity,
# and can be defended on the grounds that the results are used to
# provide rough estimates of the Sherman function for use as a prior
# probability distribution in inference from the experiments with
# which this work is really concerned, and not to provide final
# conclusions.

set nokey
set size 1, 2
set pointsize 0.01
set style data errorbars

set terminal pslatex
set color
set output 'HER_Average.tex'

set xlabel "$W/\\ut{fJ}$"
set ylabel "$\\Gamma$"

plot 'HER_Average.dat' using ($1*1.6*10.0**(-4.0)):2:(0.00029)

set terminal png
set color
set output 'HER_Average.png'

set xlabel "W/fJ"
set ylabel "Gamma"

plot 'HER_Average.dat' using ($1*1.6*10.0**(-4.0)):2:(0.00029)
