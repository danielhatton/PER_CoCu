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

# This plots the data from 19th September 2002

reset

set pointsize 2
set style data linespoints
set key below
set size 1, 2

set terminal pslatex
set color
set xlabel "$t/\\ut{nm}$"
set ylabel "$E_b/\\ut{eV}$"
set zlabel "$SP$"

set output 'grand_asyms.tex'
splot 'grand_asyms.dat' using (78.0*$1/1000.0):2:4 notitle

set terminal png
set color
set xlabel "t/nm"
set ylabel "Eb/eV"
set zlabel "SP"

set output 'grand_asyms.png'
splot 'grand_asyms.dat' using (78.0*$1/1000.0):2:4 notitle
