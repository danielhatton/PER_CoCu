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

set size 1,2
set nokey

set terminal pslatex
set color
set output 'enhancement.tex'

f(x) =  x < 1.0/2.0 ?  x/(3.0-2.0*x) : 3.0*x/(1.0+2.0*x)

set xrange [0.0:1.0]

set xlabel '$P(T_1)$'
set ylabel '$P(T_1|E_1)$ or $P(T_1|F_1)$'

plot f(x) notitle

set terminal png
set color
set output 'enhancement.png'

f(x) =  x < 1.0/2.0 ?  x/(3.0-2.0*x) : 3.0*x/(1.0+2.0*x)

set xrange [0.0:1.0]

set xlabel 'P(T1)'
set ylabel 'P(T1|E1) or P(T1|F1)'

plot f(x) notitle

set xrange [*:*]
