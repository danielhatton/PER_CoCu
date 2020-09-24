# Copyright 2003 D. C. Hatton
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

# This plots the reflected beam polarization, predicted by the classical-
# field theory, against the ratio of Weiss field to electric potential.

set nokey
set size 1, 2

e = 1.60217733e-19
hbar = 1.05457266e-34
me = 9.1093897e-31

P(B) = -(4.0*e**2.0*hbar*me*B)/(12.0*e**2.0*me**2.0+e**2.0*hbar**2.0*B**2.0)

set xrange [-80:80]

set terminal pslatex
set color
set output "display-cft-predictions.tex"

set xlabel "$(B/V)/(\\ut{kT}\\ut{V}^{-1})$"
set ylabel "$P$"

plot P(1000.0*x)

set terminal png
set color
set output "display-cft-predictions.png"

set xlabel "(B/V)/(kT)/V"
set ylabel "P"

plot P(1000.0*x)

set xrange [*:*]