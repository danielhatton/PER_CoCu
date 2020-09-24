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

# This plots the data from 9th July 2002

set pointsize 0.01
set style data xyerrorbars
set key below
set size 1, 2

set terminal pslatex
set color
set xlabel "$I_b/\\ut{nA}$"
set ylabel "$f_d/\\ut{Hz}$"

set output '20020709_Polarimetry.tex'
plot '20020709_Polarimetry.dat' using 5:($2 < 1.5 && $3 < 375 ? $8 : 1/0):6:9 title "Detector 1, $E_b = (250\\pm{}0.3)\\ut{eV}$", '20020709_Polarimetry.dat' using 5:($2 < 1.5 && $3 >= 375 ? $8 : 1/0):6:9 title "Detector 1, $E_b = (500\\pm{}0.3)\\ut{eV}$", '20020709_Polarimetry.dat' using 5:($2 >= 1.5 && $3 < 375 ? $8 : 1/0):6:9 title "Detector 2, $E_b = (250\\pm{}0.3)\\ut{eV}$", '20020709_Polarimetry.dat' using 5:($2 >= 1.5 && $3 >= 375 ? $8 : 1/0):6:9 title "Detector 2, $E_b = (500\\pm{}0.3)\\ut{eV}$"

set terminal png
set color
set xlabel "Ib/nA"
set ylabel "fd/Hz"

set output '20020709_Polarimetry.png'
plot '20020709_Polarimetry.dat' using 5:($2 < 1.5 && $3 < 375 ? $8 : 1/0):6:9 title "Detector 1, Eb = (250+/-0.3)eV", '20020709_Polarimetry.dat' using 5:($2 < 1.5 && $3 >= 375 ? $8 : 1/0):6:9 title "Detector 1, Eb = (500+/-0.3)eV", '20020709_Polarimetry.dat' using 5:($2 >= 1.5 && $3 < 375 ? $8 : 1/0):6:9 title "Detector 2, Eb = (250+/-0.3)eV", '20020709_Polarimetry.dat' using 5:($2 >= 1.5 && $3 >= 375 ? $8 : 1/0):6:9 title "Detector 2, Eb = (500+/-0.3)eV"
