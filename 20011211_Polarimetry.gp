# Copyright 2002 D. C. Hatton
#
# D. C. Hatton can be contacted on dan.hatton@btinternet.com
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program (in the file copying.programs;) if not,
# write to the Free Software Foundation, Inc., 59 Temple Place, Suite
# 330, Boston, MA 02111-1307 USA

# This plots the data from 11th December 2001

set pointsize 0.01
set style data xyerrorbars
set key below
set size 1, 2

pi = 3.1415927

Gaussian(x, mu, sigma) = exp(-((x-mu)**2.0/sigma**2.0))/sqrt(2.0*pi*sigma**2.0)
tophat(x, low, high) = x < low ? Gaussian(x, (high+low)/2.0, (high-low)/5.32) : x <= high ? 127.0/(128.0*(high-low)) : Gaussian(x, (high+low)/2.0, (high-low)/5.32)

rhou1(I) = tophat(I, 11500.0, 12500.0)+Gaussian(I, 15100.0, 100.0)
rhou2(I) = Gaussian(I, 6500.0, 500.0)+Gaussian(I, 14100.0, 500.0)
rhod1(I) = tophat(I, 16500.0, 17500.0)+tophat(I, 14500.0, 15500.0)
rhod2(I) = Gaussian(I, 16500.0, 1500.0)+Gaussian(I, 14000.0, 1000.0)


set terminal pslatex
set color
set xrange [0:23500]
set xlabel "$I_d/\\ut{fA}$"
set ylabel "$\\rho\\ut{fA}$"
set output '20011211_Polarimetry.tex'
plot rhou1(x) title "Magnetization up, detector 1", rhou2(x) title "Magnetization up, detector 2", rhod1(x) title "Magnetization down, detector 1", rhod2(x) title "Magnetization down, detector 2"


set terminal png
set color
set xlabel "Id/fA"
set ylabel "rhofA"
set output '20011211_Polarimetry.png'
plot rhou1(x) title "Magnetization up, detector 1", rhou2(x) title "Magnetization up, detector 2", rhod1(x) title "Magnetization down, detector 1", rhod2(x) title "Magnetization down, detector 2"

set xrange [*:*]
