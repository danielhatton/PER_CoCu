# Copyright 2002-2003 D. C. Hatton
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

FIT_LIMIT = 1e-20

c1=1.0
c2=1.0

f(E, M) = M < 0.5 ?  98666991.1875*c1/E**2.0 : M < 1.5 ? 98666991.1875*c2/E**2.0 : M < 2.5 ? 98666991.1875*c1/E**2.0 : 98666991.1875*c2/E**2.0

fit f(x,y) '20020919_Polarimetry_1.dat' using 3:($1+$2):($8/$5):(sqrt(($9/$5)**2.0+($8*$6/$5**2.0)**2.0)) via c1, c2

set pointsize 0.01
set style data xyerrorbars
set key below
set size 1, 2

set terminal pslatex
set color
set xlabel "$E_b/\\ut{eV}$"
set ylabel "$f_d/\\ut{Hz}$"

set output '20020919_Polarimetry_1_2.tex'
plot '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization up, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization up, detector 2", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization down, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization down, detector 2", 2000.0*f(x, 2.0) title "Detector 1", 2000.0*f(x, 3.0) title "Detector 2"

set output '20020919_Polarimetry_1_4.tex'
plot '20020919_Polarimetry_1.dat' using 3:(1 >= 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 2", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 2", 4000.0*f(x, 2.0) title "Detector 1", 4000.0*f(x, 3.0) title "Detector 2"

set output '20020919_Polarimetry_1_6.tex'
plot '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 2", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 2", 6000.0*f(x, 2.0) title "Detector 1", 6000.0*f(x, 3.0) title "Detector 2"

set terminal png
set color
set xlabel "Eb/eV"
set ylabel "fd/Hz"

set output '20020919_Polarimetry_1_2.png'
plot '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization up, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization up, detector 2", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 < 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization down, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 < 3000 ? $8 : 1/0):4:9 title "Magnetization down, detector 2", 2000.0*f(x, 2.0) title "Detector 1", 2000.0*f(x, 3.0) title "Detector 2"

set output '20020919_Polarimetry_1_4.png'
plot '20020919_Polarimetry_1.dat' using 3:(1 >= 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 2", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 3000 && $5 < 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 2", 4000.0*f(x, 2.0) title "Detector 1", 4000.0*f(x, 3.0) title "Detector 2"

set output '20020919_Polarimetry_1_6.png'
plot '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 >= 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization up, detector 2", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 < 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 1", '20020919_Polarimetry_1.dat' using 3:($1 < 0 && $2 >= 1.5 && $5 >= 5000 ? $8 : 1/0):4:9 title "Magnetization down, detector 2", 6000.0*f(x, 2.0) title "Detector 1", 6000.0*f(x, 3.0) title "Detector 2"
