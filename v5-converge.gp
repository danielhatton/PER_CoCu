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

# This plots the convergence of the electrostatic potential with film
# thickness 5.

set pointsize 0.01
set style data lines
set key below
set size 1, 2

set terminal pslatex
set color
set xlabel "$i$"
set ylabel "$\\bar{V_5}^{(\\textrm{pos}, n, i)}/\\ut{V}$ or $\\sqrt{\\bar{V_5^2}^{(\\textrm{pos}, n, i)}}/\\ut{V}$"

set output 'v5-converge.tex'
plot 'null_params' using ($0+1):37 title "$\\bar{V_5}^{(\\textrm{pos}, N, i)}$", 'null_sparams' using ($0+1):(sqrt($37)) title "$\\sqrt{\\bar{V_5^2}^{(\\textrm{pos}, N, i)}}$", 'main_params' using ($0+1):37 title "$\\bar{V_5}^{(\\textrm{pos}, M, i)}$", 'main_sparams' using ($0+1):(sqrt($37)) title "$\\sqrt{\\bar{V_5^2}^{(\\textrm{pos}, M, i)}}$"

set terminal png
set color
set xlabel "i"
set ylabel "V5bar(pos, n, i)/V or sqrt(V5^2bar(pos, n, i))/V"

set output 'v5-converge.png'
plot 'null_params' using ($0+1):37 title "V5bar(pos, N, i)", 'null_sparams' using ($0+1):(sqrt($37)) title "sqrt(V5^2bar(pos, N, i))", 'main_params' using ($0+1):37 title "V5bar(pos, M, i)", 'main_sparams' using ($0+1):(sqrt($37)) title "sqrt(V5^2bar(pos, M, i))"
