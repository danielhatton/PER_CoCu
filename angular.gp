# Copyright 2002-2004 D. C. Hatton
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

# This plots the curents arriving at the channeltrons against the "longitude"
# angle of the sample.

reset

FIT_LIMIT = 10.0**(-20.0)

Gauss(position,centre,width,height) = height*exp(-(((tan(position-centre))**2.0)/(2.0*width**2.0)))

mu1a = 2.785
sigma1a = 0.15
i1a = 16.0
dark1a = 2.0

mu1b = 2.84941
sigma1b = 0.1
i1b = 3.8
dark1b = 1.3

mu2a = 2.785
sigma2a = 0.15
i2a = 16.0
dark2a = 2.0

mu2b = 2.84941
sigma2b = 0.1
i2b = 3.8
dark2b = 1.3

f(position,centre,width,height,dark) = Gauss(-position,-centre+pi/4.0,width,height)+dark

g(position,centre,width,height,dark) = Gauss(-position,-centre+pi/4.0,width,height)/((cos(centre-position))**4.0)+dark

fit f(x,mu1a,sigma1a,i1a,dark1a) "angular.dat" using ($1*2.0*pi/360.0):($3):($4) via mu1a, sigma1a, i1a, dark1a

fit g(x,mu1b,sigma1b,i1b,dark1b) "angular.dat" using ($1*2.0*pi/360.0):($3):($4) via mu1b, sigma1b, i1b, dark1b

fit f(x,mu2a,sigma2a,i2a,dark2a) "angular.dat" using ($1*2.0*pi/360.0):($5):($6) via mu2a, sigma2a, i2a, dark2a

fit g(x,mu2b,sigma2b,i2b,dark2b) "angular.dat" using ($1*2.0*pi/360.0):($5):($6) via mu2b, sigma2b, i2b, dark2b

set key below
set size 1,2

set terminal pslatex
set color
set output "angular-1.tex"

set xlabel "$\\theta/\\ut{rad}$"
set ylabel "$I_1/\\ut{pA}$"

plot f(x,mu1a,sigma1a,i1a,dark1a) title "Constant reflection coefficient", g(x,mu1b,sigma1b,i1b,dark1b) title "Inverse-fourth-cosine reflection coefficient", "angular.dat" using ($1*2.0*pi/360.0):($3):($2*2.0*pi/360.0):($4) title "Experimental data" with xyerrorbars

set terminal pslatex
set color
set output "angular-2.tex"

set xlabel "$\\theta/\\ut{rad}$"
set ylabel "$I_2/\\ut{pA}$"

plot f(x,mu2a,sigma2a,i2a,dark2a) title "Constant reflection coefficient", g(x,mu2b,sigma2b,i2b,dark2b) title "Inverse-fourth-cosine reflection coefficient", "angular.dat" using ($1*2.0*pi/360.0):($5):($2*2.0*pi/360.0):($6) title "Experimental data" with xyerrorbars

set terminal png
set color
set output "angular-1.png"

set xlabel "theta/rad"
set ylabel "I1/pA"

plot f(x,mu1a,sigma1a,i1a,dark1a) title "Constant reflection coefficient", g(x,mu1b,sigma1b,i1b,dark1b) title "Inverse-fourth-cosine reflection coefficient", "angular.dat" using ($1*2.0*pi/360.0):($3):($2*2.0*pi/360.0):($4) title "Experimental data" with xyerrorbars

set terminal png
set color
set output "angular-2.png"

set xlabel "theta/rad"
set ylabel "I2/pA"

plot f(x,mu2a,sigma2a,i2a,dark2a) title "Constant reflection coefficient", g(x,mu2b,sigma2b,i2b,dark2b) title "Inverse-fourth-cosine reflection coefficient", "angular.dat" using ($1*2.0*pi/360.0):($5):($2*2.0*pi/360.0):($6) title "Experimental data" with xyerrorbars
