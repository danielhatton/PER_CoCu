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

# This plots the data from 22nd November 2001

set pointsize 0.01
set style data xyerrorbars
set size 1, 2
set key below

set terminal pslatex
set color
set xlabel "$E_b/\\ut{eV}$"
set ylabel "$I_d/\\ut{fA}$"

set output '20011121_Polarimetry.tex'
plot '20011121_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1', '20011121_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20011121_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20011121_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'

set terminal png
set color
set xlabel "Eb/eV"
set ylabel "Id/fA"

set output '20011121_Polarimetry.png'
plot '20011121_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1', '20011121_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20011121_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20011121_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'
