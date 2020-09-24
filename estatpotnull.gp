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

# This plots the electrostatic potential in the null model against
# film thickness

set pointsize 0.01
set style data xyerrorbars
set nokey
set size 1, 2

set terminal pslatex
set color
set xlabel "$t/\\ut{\\mu{}A}\\ut{s}$"
set ylabel "$V/\\ut{V}$"

set output 'estatpotnull.tex'
plot 'summary.dat' using 1:3:2:4

set terminal png
set color
set xlabel "t/muAs"
set ylabel "V/V"

set output 'estatpotnull.png'
plot 'summary.dat' using 1:3:2:4
