# Copyright 2004 D. C. Hatton
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

# This plots some of KPK's MOKE B-H loops.

reset

s = 1.0
o = 1.0

VtoA(V) = s*V+o

fit VtoA(x) "compmagcal.dat" using ($1):($2):($3) via s,o
AtoApm(I) = 250.0*I/(4.0*pi*5.0*10000.0*1.0e-7)# Hope:1997:SPR says the Helmholtz coils
                                       # can go out to 250G either way, and
                                       # I know their maximum current to be
                                       # 5A either way.

VtoApm(V) = AtoApm(VtoA(V))

set key below
set size 1,2

set terminal pslatex
set color
set output "moke.tex"

set xlabel "$H/(\\ut{kA}\\ut{m}^{-1})$"
set ylabel "$B$, in arbitrary units, with arbitrary offset"

plot "20020726_MOKE_10.dat" using (VtoApm($1)/1000.0):(1000.0*($2-0.1898)) title "$t = 0$", "20020725_MOKE_05.dat" using (VtoApm($1)/1000.0):(1000.0*($2-0.1829)) title "$t = (8.4\\pm{}1.6)\\ut{nm}$", "20020721_MOKE_03.dat" using (VtoApm($1)/1000.0):(1000.0*($2+0.01312)) title "$t = (8.5\\pm{}1.3)\\ut{nm}$"

set terminal png
set color
set output "moke.png"

set xlabel "H/(kA/m)"
set ylabel "B, in arbitrary units, with arbitrary offset"

plot "20020726_MOKE_10.dat" using (VtoApm($1)/1000.0):(1000.0*($2-0.1898)) title "t = 0", "20020725_MOKE_05.dat" using (VtoApm($1)/1000.0):(1000.0*($2-0.1829)) title "t = (8.4+/-1.6)nm", "20020721_MOKE_03.dat" using (VtoApm($1)/1000.0):(1000.0*($2+0.01312)) title "t = (8.5+/-1.3)nm"