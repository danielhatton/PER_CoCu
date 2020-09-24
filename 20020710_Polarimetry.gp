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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU',
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program (in the file copying.programs;) if not,
# write to the Free Software Foundation, Inc., 59 Temple Place, Suite
# 330, Boston, MA 02111-1307 USA

# This plots the data from 10th July 2002


set pointsize 0.01
set style data xyerrorbars
set key below
set size 1, 2

set terminal pslatex
set color
set xlabel "$E_b/\\ut{eV}$"
set ylabel "$f_d/\\ut{Hz}$"

set output '20020710_Polarimetry_2.tex'
plot '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1', '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'

set output '20020710_Polarimetry_4.tex'
plot '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1, $I_b = (4\\pm{}0.029)\\ut{\\mu{}A}$', '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'

set output '20020710_Polarimetry_6.tex'
plot '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1', '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'

set terminal png
set color
set xlabel "Eb/eV"
set ylabel "fd/Hz"

set output '20020710_Polarimetry_2.png'
plot '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1$', '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'

set output '20020710_Polarimetry_4.png'
plot '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1, $I_b = (4\\pm{}0.029)\\ut{\\mu{}A}$', '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'

set output '20020710_Polarimetry_6.png'
plot '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 1', '20020710_Polarimetry.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization up, detector 2', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 1', '20020710_Polarimetry.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title 'Magnetization down, detector 2'
