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

SHELL = 'tcsh'

TITLE = PER_CoCu

DIA_INPUTS = chamber-pumps.dia chamber-prep.dia chamber-measure.dia polarimeter.dia channeltron.dia holder.dia igf.dia mn-evap-figure.dia single_step.dia dhatton1.dia single-layer.dia circles.dia misalign.dia

DIA_REPOSITORIES = chamber.dia,v chamber-pumps.dia,v chamber-prep.dia,v chamber-measure.dia,v polarimeter.dia,v channeltron.dia,v holder.dia,v igf.dia,v mn-evap-figure.dia,v single_step.dia,v dhatton1.dia,v single-layer.dia,v circles.dia,v misalign.dia,v

DIA_EPS_OUTPUTS = chamber-pumps.eps chamber-prep.eps chamber-measure.eps polarimeter.eps channeltron.eps holder.eps igf.eps mn-evap-figure.eps single_step.eps dhatton1.eps single-layer.eps circles.eps misalign.eps

DIA_PNG_OUTPUTS = chamber-pumps.png chamber-prep.png chamber-measure.png polarimeter.png channeltron.png holder.png igf.png mn-evap-figure.png single_step.png dhatton1.png single-layer.png circles.png misalign.png

INFERENCE_SCRIPTS = main null

INFERENCE_REPOSITORIES = main,v null,v

INFERRED_PARAMETERS = main_params main_sparams main_marginals null_params null_sparams null_marginals

GNUPLOT_INPUTS = 20011121_Polarimetry.gp 20011205_Polarimetry.gp 20011205_Polarimetry_2.gp 20011206_Polarimetry.gp 20011207_Polarimetry.gp 20011211_Polarimetry.gp 20011212_Polarimetry.gp HER_Average.gp HER_Sherman.gp 20020708_Polarimetry.gp 20020709_Polarimetry.gp 20020710_Polarimetry.gp 20020711_Polarimetry.gp 20020719_Polarimetry.gp 20020720_Polarimetry.gp 20020723_Polarimetry.gp 20020724_Polarimetry.gp 20020726_Polarimetry.gp 20020919_Polarimetry_1.gp 20020920_Polarimetry_1.gp 20020920_Polarimetry_2.gp 20020921_Polarimetry_1.gp 20020921_Polarimetry_2.gp 20020922_Polarimetry_1.gp 20020923_Polarimetry_1.gp 20020923_Polarimetry_2.gp grand_asyms.gp accept-converge.gp p10-converge.gp p11-converge.gp p12-converge.gp p13-converge.gp p14-converge.gp p15-converge.gp p16-converge.gp p17-converge.gp p20-converge.gp p21-converge.gp p22-converge.gp p23-converge.gp p24-converge.gp p25-converge.gp p26-converge.gp p27-converge.gp gamma0-converge.gp gamma1-converge.gp gamma2-converge.gp gamma3-converge.gp gamma4-converge.gp gamma5-converge.gp s0-converge.gp s1-converge.gp s2-converge.gp s3-converge.gp s4-converge.gp s5-converge.gp eta1-converge.gp eta2-converge.gp v0-converge.gp v1-converge.gp v2-converge.gp v3-converge.gp v4-converge.gp v5-converge.gp v6-converge.gp v7-converge.gp b1-converge.gp b2-converge.gp b3-converge.gp b4-converge.gp b5-converge.gp b6-converge.gp b7-converge.gp estatpotnull.gp estatpotmain.gp magfluxmain.gp self-interest.gp enhancement.gp plausible.gp display-cft-predictions.gp angular.gp moke.gp

GNUPLOT_REPOSITORIES = 20011121_Polarimetry.gp,v 20011205_Polarimetry.gp,v 20011205_Polarimetry_2.gp,v 20011206_Polarimetry.gp,v 20011207_Polarimetry.gp,v 20011211_Polarimetry.gp,v 20011212_Polarimetry.gp,v HER_Average.gp,v HER_Sherman.gp,v 20020708_Polarimetry.gp,v 20020709_Polarimetry.gp,v 20020710_Polarimetry.gp,v 20020711_Polarimetry.gp,v 20020719_Polarimetry.gp,v 20020720_Polarimetry.gp,v 20020723_Polarimetry.gp,v 20020724_Polarimetry.gp,v 20020726_Polarimetry.gp,v 20020919_Polarimetry_1.gp,v 20020920_Polarimetry_1.gp,v 20020920_Polarimetry_2.gp,v 20020921_Polarimetry_1.gp,v 20020921_Polarimetry_2.gp,v 20020922_Polarimetry_1.gp,v 20020923_Polarimetry_1.gp,v 20020923_Polarimetry_2.gp,v 20020919_Polarimetry_1_asyms.gp,v 20020920_Polarimetry_1_asyms.gp,v 20020920_Polarimetry_2_asyms.gp,v 20020921_Polarimetry_1_asyms.gp,v 20020921_Polarimetry_2_asyms.gp,v 20020922_Polarimetry_1_asyms.gp,v 20020923_Polarimetry_1_asyms.gp,v 20020923_Polarimetry_2_asyms.gp,v grand_asyms.gp,v accept-converge.gp,v p10-converge.gp,v p11-converge.gp,v p12-converge.gp,v p13-converge.gp,v p14-converge.gp,v p15-converge.gp,v p16-converge.gp,v p17-converge.gp,v p20-converge.gp,v p21-converge.gp,v p22-converge.gp,v p23-converge.gp,v p24-converge.gp,v p25-converge.gp,v p26-converge.gp,v p27-converge.gp,v gamma0-converge.gp,v gamma1-converge.gp,v gamma2-converge.gp,v gamma3-converge.gp,v gamma4-converge.gp,v gamma5-converge.gp,v s0-converge.gp,v s1-converge.gp,v s2-converge.gp,v s3-converge.gp,v s4-converge.gp,v s5-converge.gp,v eta1-converge.gp,v eta2-converge.gp,v v0-converge.gp,v v1-converge.gp,v v2-converge.gp,v v3-converge.gp,v v4-converge.gp,v v5-converge.gp,v v6-converge.gp,v v7-converge.gp,v b1-converge.gp,v b2-converge.gp,v b3-converge.gp,v b4-converge.gp,v b5-converge.gp,v b6-converge.gp,v b7-converge.gp,v estatpotnull.gp,v estatpotmain.gp,v magfluxmain.gp,v self-interest.gp,v enhancement.gp,v plausible.gp,v display-cft-predictions.gp,v angular.gp,v moke.gp,v

ASYM_FILES = 20020919_Polarimetry_1_asyms.dat 20020920_Polarimetry_1_asyms.dat 20020920_Polarimetry_2_asyms.dat 20020921_Polarimetry_1_asyms.dat 20020921_Polarimetry_2_asyms.dat 20020922_Polarimetry_1_asyms.dat 20020923_Polarimetry_1_asyms.dat 20020923_Polarimetry_2_asyms.dat grand_asyms.dat

DATA_FILES = 20011121_Polarimetry.dat 20011205_Polarimetry.dat 20011205_Polarimetry_2.dat 20011206_Polarimetry.dat 20011207_Polarimetry.dat 20011211_Polarimetry.dat 20011212_Polarimetry.dat HER_Average.dat HER_Sherman.dat 20020708_Polarimetry.dat 20020709_Polarimetry.dat 20020710_Polarimetry.dat 20020711_Polarimetry.dat 20020719_Polarimetry.dat 20020720_Polarimetry.dat 20020723_Polarimetry.dat 20020724_Polarimetry.dat 20020726_Polarimetry.dat 20020919_Polarimetry_1.dat 20020920_Polarimetry_1.dat 20020920_Polarimetry_2.dat 20020921_Polarimetry_1.dat 20020921_Polarimetry_2.dat 20020922_Polarimetry_1.dat 20020923_Polarimetry_1.dat 20020923_Polarimetry_2.dat angular.dat compmagcal.dat 20020726_MOKE_10.dat 20020725_MOKE_05.dat 20020721_MOKE_03.dat

DATA_REPOSITORIES = 20011121_Polarimetry.dat,v 20011205_Polarimetry.dat,v 20011205_Polarimetry_2.dat,v 20011206_Polarimetry.dat,v 20011207_Polarimetry.dat,v 20011211_Polarimetry.dat,v 20011212_Polarimetry.dat,v HER_Average.dat,v HER_Sherman.dat,v 20020708_Polarimetry.dat,v 20020709_Polarimetry.dat,v 20020710_Polarimetry.dat,v 20020711_Polarimetry.dat,v 20020719_Polarimetry.dat,v 20020720_Polarimetry.dat,v 20020723_Polarimetry.dat,v 20020724_Polarimetry.dat,v 20020726_Polarimetry.dat,v 20020919_Polarimetry_1.dat,v 20020920_Polarimetry_1.dat,v 20020920_Polarimetry_2.dat,v 20020921_Polarimetry_1.dat,v 20020921_Polarimetry_2.dat,v 20020922_Polarimetry_1.dat,v 20020923_Polarimetry_1.dat,v 20020923_Polarimetry_2.dat,v null_params,v null_sparams,v main_params,v main_sparams,v angular.dat,v compmagcal.dat,v 20020726_MOKE_10.dat,v 20020725_MOKE_05.dat,v 20020721_MOKE_03.dat,v

GNUPLOT_TEX_OUTPUTS = 20011121_Polarimetry.tex 20011205_Polarimetry.tex 20011205_Polarimetry_2.tex 20011206_Polarimetry.tex 20011207_Polarimetry.tex 20011211_Polarimetry.tex 20011212_Polarimetry.tex HER_Average.tex HER_Sherman.tex 20020708_Polarimetry.tex 20020709_Polarimetry.tex 20020710_Polarimetry_2.tex 20020710_Polarimetry_4.tex 20020710_Polarimetry_6.tex 20020711_Polarimetry_2.tex 20020711_Polarimetry_4.tex 20020711_Polarimetry_6.tex 20020719_Polarimetry_2.tex 20020719_Polarimetry_4.tex 20020719_Polarimetry_6.tex 20020720_Polarimetry_2.tex 20020720_Polarimetry_4.tex 20020720_Polarimetry_6.tex 20020723_Polarimetry_2.tex 20020723_Polarimetry_4.tex 20020723_Polarimetry_6.tex 20020724_Polarimetry_2.tex 20020724_Polarimetry_4.tex 20020724_Polarimetry_6.tex 20020726_Polarimetry_2.tex 20020726_Polarimetry_4.tex 20020726_Polarimetry_6.tex 20020919_Polarimetry_1_2.tex 20020919_Polarimetry_1_4.tex 20020919_Polarimetry_1_6.tex 20020920_Polarimetry_1_2.tex 20020920_Polarimetry_1_4.tex 20020920_Polarimetry_1_6.tex 20020920_Polarimetry_2_2.tex 20020920_Polarimetry_2_4.tex 20020920_Polarimetry_2_6.tex 20020921_Polarimetry_1_2.tex 20020921_Polarimetry_1_4.tex 20020921_Polarimetry_1_6.tex 20020921_Polarimetry_2_2.tex 20020921_Polarimetry_2_4.tex 20020921_Polarimetry_2_6.tex 20020922_Polarimetry_1_2.tex 20020922_Polarimetry_1_4.tex 20020922_Polarimetry_1_6.tex 20020923_Polarimetry_1_2.tex 20020923_Polarimetry_1_4.tex 20020923_Polarimetry_1_6.tex 20020923_Polarimetry_2_2.tex 20020923_Polarimetry_2_4.tex 20020923_Polarimetry_2_6.tex grand_asyms.tex accept-converge.tex p10-converge.tex p11-converge.tex p12-converge.tex p13-converge.tex p14-converge.tex p15-converge.tex p16-converge.tex p17-converge.tex p20-converge.tex p21-converge.tex p22-converge.tex p23-converge.tex p24-converge.tex p25-converge.tex p26-converge.tex p27-converge.tex gamma0-converge.tex gamma1-converge.tex gamma2-converge.tex gamma3-converge.tex gamma4-converge.tex gamma5-converge.tex s0-converge.tex s1-converge.tex s2-converge.tex s3-converge.tex s4-converge.tex s5-converge.tex eta1-converge.tex eta2-converge.tex v0-converge.tex v1-converge.tex v2-converge.tex v3-converge.tex v4-converge.tex v5-converge.tex v6-converge.tex v7-converge.tex b1-converge.tex b2-converge.tex b3-converge.tex b4-converge.tex b5-converge.tex b6-converge.tex b7-converge.tex  estatpotnull.tex estatpotmain.tex magfluxmain.tex self-interest.tex enhancement.tex plausible.tex display-cft-predictions.tex angular-1.tex angular-2.tex moke.tex

GNUPLOT_PNG_OUTPUTS = 20011121_Polarimetry.png 20011205_Polarimetry.png 20011205_Polarimetry_2.png 20011206_Polarimetry.png 20011207_Polarimetry.png 20011211_Polarimetry.png 20011212_Polarimetry.png HER_Average.png HER_Sherman.png 20020708_Polarimetry.png 20020709_Polarimetry.png 20020710_Polarimetry_2.png 20020710_Polarimetry_4.png 20020710_Polarimetry_6.png 20020711_Polarimetry_2.png 20020711_Polarimetry_4.png 20020711_Polarimetry_6.png 20020719_Polarimetry_2.png 20020719_Polarimetry_4.png 20020719_Polarimetry_6.png 20020720_Polarimetry_2.png 20020720_Polarimetry_4.png 20020720_Polarimetry_6.png 20020723_Polarimetry_2.png 20020723_Polarimetry_4.png 20020723_Polarimetry_6.png 20020724_Polarimetry_2.png 20020724_Polarimetry_4.png 20020724_Polarimetry_6.png 20020726_Polarimetry_2.png 20020726_Polarimetry_4.png 20020726_Polarimetry_6.png 20020919_Polarimetry_1_2.png 20020919_Polarimetry_1_4.png 20020919_Polarimetry_1_6.png 20020920_Polarimetry_1_2.png 20020920_Polarimetry_1_4.png 20020920_Polarimetry_1_6.png 20020920_Polarimetry_2_2.png 20020920_Polarimetry_2_4.png 20020920_Polarimetry_2_6.png 20020921_Polarimetry_1_2.png 20020921_Polarimetry_1_4.png 20020921_Polarimetry_1_6.png 20020921_Polarimetry_2_2.png 20020921_Polarimetry_2_4.png 20020921_Polarimetry_2_6.png 20020922_Polarimetry_1_2.png 20020922_Polarimetry_1_4.png 20020922_Polarimetry_1_6.png 20020923_Polarimetry_1_2.png 20020923_Polarimetry_1_4.png 20020923_Polarimetry_1_6.png 20020923_Polarimetry_2_2.png 20020923_Polarimetry_2_4.png 20020923_Polarimetry_2_6.png grand_asyms.png accept-converge.png p10-converge.png p11-converge.png p12-converge.png p13-converge.png p14-converge.png p15-converge.png p16-converge.png p17-converge.png p20-converge.png p21-converge.png p22-converge.png p23-converge.png p24-converge.png p25-converge.png p26-converge.png p27-converge.png gamma0-converge.png gamma1-converge.png gamma2-converge.png gamma3-converge.png gamma4-converge.png gamma5-converge.png s0-converge.png s1-converge.png s2-converge.png s3-converge.png s4-converge.png s5-converge.png eta1-converge.png eta2-converge.png v0-converge.png v1-converge.png v2-converge.png v3-converge.png v4-converge.png v5-converge.png v6-converge.png v7-converge.png b1-converge.png b2-converge.png b3-converge.png b4-converge.png b5-converge.png b6-converge.png b7-converge.png estatpotnull.png estatpotmain.png magfluxmain.png self-interest.png enhancement.png plausible.png display-cft-predictions.png angular-1.png angular-2.png moke.png

COEFFS = coeff-0.gp coeff-1.gp coeff-2.gp coeff-3.gp coeff-4.gp coeff-5.gp coeff-6.gp coeff-7.gp

ESTIMATES = an.tex P10n.tex P11n.tex P12n.tex P13n.tex P14n.tex P15n.tex P16n.tex P17n.tex P20n.tex P21n.tex P22n.tex P23n.tex P24n.tex P25n.tex P26n.tex P27n.tex Gamma0n.tex Gamma1n.tex Gamma2n.tex Gamma3n.tex Gamma4n.tex Gamma5n.tex S0n.tex S1n.tex S2n.tex S3n.tex S4n.tex S5n.tex eta1n.tex eta2n.tex V0n.tex V1n.tex V2n.tex V3n.tex V4n.tex V5n.tex V6n.tex V7n.tex am.tex P10m.tex P11m.tex P12m.tex P13m.tex P14m.tex P15m.tex P16m.tex P17m.tex P20m.tex P21m.tex P22m.tex P23m.tex P24m.tex P25m.tex P26m.tex P27m.tex Gamma0m.tex Gamma1m.tex Gamma2m.tex Gamma3m.tex Gamma4m.tex Gamma5m.tex S0m.tex S1m.tex S2m.tex S3m.tex S4m.tex S5m.tex eta1m.tex eta2m.tex V0m.tex V1m.tex V2m.tex V3m.tex V4m.tex V5m.tex V6m.tex V7m.tex B1m.tex B2m.tex B3m.tex B4m.tex B5m.tex B6m.tex B7m.tex

SCANNED = copied-theory-figure.png copied-experiment-figure.png copied-theory-figure.eps copied-experiment-figure.eps

SCANNED_REP = copied-theory-figure.png,v copied-experiment-figure.png,v

PHOTOS = chamber-photo.jpeg chamber-photo.eps

PHOTOS_REP = chamber-photo.jpeg,v

postscript : $(TITLE).ps

html : web

transparent : $(TITLE).tar.gz

pdf: $(TITLE).pdf

$(TITLE).pdf : for_pdf.ps

	ps2pdf for_pdf.ps $(TITLE).pdf

for_pdf.ps : index.dvi

	dvips -Ppdf -o for_pdf.ps index.dvi
# Thanks to Ian Farrer for suggesting this

$(TITLE).ps : index.dvi

	dvips -o $(TITLE).ps index.dvi

$(TITLE).tar.gz : $(TITLE).tar

	gzip $(TITLE).tar

$(TITLE).tar : $(TITLE)

	tar -c -v -f $(TITLE).tar $(TITLE)

$(TITLE) : index.ltx index.ltx,v Makefile Makefile,v readme readme,v copyright.programs copyright.programs,v copyright.data.tex copyright.data.tex,v copying.programs copying.programs,v copying.data.tex copying.data.tex,v author.tex author.tex,v packages.tex packages.tex,v newcommands.tex newcommands.tex,v history.tex history.tex,v acknowledgements.tex acknowledgements.tex,v abstract.tex abstract.tex,v todo.tex todo.tex,v supplement.tex supplement.tex,v per-supplement.tex,v latex2html-copyright latex2html-copyright,v $(DIA_INPUTS) $(DIA_REPOSITORIES) $(GNUPLOT_INPUTS) $(GNUPLOT_REPOSITORIES) $(DATA_FILES) $(DATA_REPOSITORIES) $(INFERENCE_SCRIPTS) $(INFERENCE_REPOSITORIES) summarize summarize,v frequentist frequentist,v $(SCANNED) $(SCANNED_REP) $(PHOTOS) $(PHOTOS_REP)

	if ( !( -e ./$(TITLE) ) ) mkdir $(TITLE)
	cp index.ltx $(TITLE)/
	cp index.ltx,v $(TITLE)/
	if ( -e ./everything.bib ) cp everything.bib $(TITLE)/
	if ( ( !( -e ./everything.bib ) ) && ( -e ~/everything.bib ) ) cp ~/everything.bib $(TITLE)/
	if ( -e ./journal-abbreviations.bib ) cp journal-abbreviations.bib $(TITLE)/
	if ( ( !( -e ./journal-abbreviations.bib ) ) && ( -e ~/journal-abbreviations.bib ) ) cp ~/journal-abbreviations.bib $(TITLE)/
	if ( -e ./journal-titles.bib ) cp journal-titles.bib $(TITLE)/
	if ( ( !( -e ./journal-titles.bib ) ) && ( -e ~/journal-titles.bib ) ) cp ~/journal-titles.bib $(TITLE)/
	cp Makefile $(TITLE)/
	cp Makefile,v $(TITLE)/
	cp readme $(TITLE)/
	cp readme,v $(TITLE)/
	cp copyright.programs $(TITLE)/
	cp copyright.programs,v $(TITLE)/
	cp copyright.data.tex $(TITLE)/
	cp copyright.data.tex,v $(TITLE)/
	cp copying.programs $(TITLE)/
	cp copying.programs,v $(TITLE)/
	cp copying.data.tex $(TITLE)/
	cp copying.data.tex,v $(TITLE)/
	cp author.tex $(TITLE)/
	cp author.tex,v $(TITLE)/
	cp packages.tex $(TITLE)/
	cp packages.tex,v $(TITLE)/
	cp newcommands.tex $(TITLE)/
	cp newcommands.tex,v $(TITLE)/
	cp history.tex $(TITLE)/
	cp history.tex,v $(TITLE)/
	cp acknowledgements.tex $(TITLE)/
	cp acknowledgements.tex,v $(TITLE)/
	cp abstract.tex $(TITLE)/
	cp abstract.tex,v $(TITLE)/
	cp todo.tex $(TITLE)/
	cp todo.tex,v $(TITLE)/
	cp supplement.tex $(TITLE)/
	cp supplement.tex,v $(TITLE)/
	cp per-supplement.tex,v $(TITLE)/
	cp latex2html-copyright $(TITLE)/
	cp latex2html-copyright,v $(TITLE)/
	cp $(DIA_INPUTS) $(TITLE)/
	cp $(DIA_REPOSITORIES) $(TITLE)/
	cp $(GNUPLOT_INPUTS) $(TITLE)/
	cp $(GNUPLOT_REPOSITORIES) $(TITLE)/
	cp $(DATA_FILES) $(TITLE)/
	cp $(DATA_REPOSITORIES) $(TITLE)/
	cp $(INFERENCE_SCRIPTS) $(TITLE)/
	cp $(INFERENCE_REPOSITORIES) $(TITLE)/
	cp $(INFERRED_PARAMETERS) $(TITLE)/
	cp summarize $(TITLE)/
	cp summarize,v $(TITLE)/
	cp frequentist $(TITLE)/
	cp frequentist,v $(TITLE)/
	if ( -e ./null_marginals ) cp null_marginals $(TITLE)/
	if ( -e ./null_params ) cp null_params $(TITLE)/
	if ( -e ./null_sparams ) cp null_sparams $(TITLE)/
	if ( -e ./main_marginals ) cp main_marginals $(TITLE)/
	if ( -e ./main_params ) cp null_params $(TITLE)/
	if ( -e ./main_sparams ) cp main_sparams $(TITLE)/
	cp $(SCANNED) $(TITLE)/
	cp $(SCANNED_REP) $(TITLE)/
	cp $(PHOTOS) $(TITLE)/
	cp $(PHOTOS_REP) $(TITLE)/

web : index.ltx index.aux index.bbl index.blg copyright.data.tex copying.data.tex author.tex packages.tex newcommands.tex history.tex acknowledgements.tex abstract.tex todo.tex supplement.tex $(DIA_PNG_OUTPUTS) $(GNUPLOT_PNG_OUTPUTS) null-posterior.tex main-posterior.tex $(ESTIMATES) $(SCANNED) $(PHOTOS)

	mkdir -p web
	cp $(DIA_PNG_OUTPUTS) web/
	cp $(GNUPLOT_PNG_OUTPUTS) web/
	cp $(SCANNED) web/
	cp $(PHOTOS) web/
	latex2html -dir web index.ltx

index.dvi : index.ltx index.bbl index.blg copyright.data.tex copying.data.tex author.tex packages.tex newcommands.tex history.tex acknowledgements.tex abstract.tex todo.tex supplement.tex $(DIA_EPS_OUTPUTS) $(GNUPLOT_TEX_OUTPUTS) null-posterior.tex main-posterior.tex $(ESTIMATES) $(SCANNED) $(PHOTOS)

	latex index.ltx
	latex index.ltx
	latex index.ltx

slides.dvi : slides.flt slides.bbl slides.blg slide-newcommands.tex slide-packages.tex newcommands.tex $(DIA_EPS_OUTPUTS) $(GNUPLOT_TEX_OUTPUTS) $(SCANNED) $(PHOTOS)

	latex slides.flt
	latex slides.flt
	latex slides.flt

index.bbl index.blg : index.aux

	bibtex index
	fixbbl.py index.bbl

slides.bbl slides.blg : slides.aux

	bibtex slides
	fixbbl.by slides.bbl

index.aux : index.ltx copyright.data.tex copying.data.tex author.tex packages.tex newcommands.tex history.tex acknowledgements.tex abstract.tex todo.tex supplement.tex $(DIA_EPS_OUTPUTS) $(GNUPLOT_TEX_OUTPUTS) null-posterior.tex main-posterior.tex $(ESTIMATES) $(SCANNED) $(PHOTOS)

	latex index.ltx
	latex index.ltx
	latex index.ltx
	rm -f index.dvi

slides.aux : slides.flt slide-newcommands.tex slide-packages.tex newcommands.tex $(DIA_EPS_OUTPUTS) $(GNUPLOT_TEX_OUTPUTS) $(SCANNED) $(PHOTOS)

	latex slides.flt
	latex slides.flt
	latex slides.flt
	rm -f slides.dvi

$(DIA_EPS_OUTPUTS) : $(DIA_INPUTS)

	dia -e $@ $(subst .eps,,$@).dia

$(DIA_PNG_OUTPUTS) : $(DIA_INPUTS)

	dia -e $@ $(subst .png,,$@).dia

$(GNUPLOT_TEX_OUTPUTS) $(GNUPLOT_PNG_OUTPUTS) : $(GNUPLOT_INPUTS) $(INFERRED_PARAMETERS) $(DATA_FILES) $(ASYM_FILES) $(INFERRED_PARAMETERS) summary.dat $(COEFFS)

	gnuplot $(GNUPLOT_INPUTS)

arXiv.tar.gz : arXiv.tar

	gzip arXiv.tar

arXiv.tar : index.ltx index.bbl copyright.data.tex copying.data.tex copying.programs copyright.programs latex2html-copyright author.tex packages.tex newcommands.tex history.tex acknowledgements.tex abstract.tex todo.tex supplement.tex $(DIA_EPS_OUTPUTS) $(GNUPLOT_TEX_OUTPUTS) null-posterior.tex main-posterior.tex $(ESTIMATES)

	tar cvf arXiv.tar index.ltx index.bbl copyright.data.tex copying.data.tex copying.programs copyright.programs latex2html-copyright author.tex packages.tex newcommands.tex history.tex acknowledgements.tex abstract.tex todo.tex supplement.tex $(DIA_EPS_OUTPUTS) $(GNUPLOT_TEX_OUTPUTS) null-posterior.tex main-posterior.tex $(ESTIMATES)
	cp /usr/share/texmf/tex/latex/latex2html/hthtml.sty ./ ; tar rvf arXiv.tar hthtml.sty ; rm -f hthtml.sty
	cp /usr/share/texmf/tex/latex/latex2html/html.sty ./ ; tar rvf arXiv.tar html.sty ; rm -f html.sty
	cp index.bbl index.ltx.bbl ; tar rvf arXiv.tar index.ltx.bbl ; rm -f index.ltx.bbl

$(INFERRED_PARAMETERS) : $(INFERENCE_SCRIPTS) $(DATA_FILES)

	nice -n 19 perl null >& /dev/null &
	nice -n 19 perl main >& /dev/null &

$(ASYM_FILES) : $(DATA_FILES) frequentist

	perl frequentist

null-posterior.tex main-posterior.tex summary.dat $(COEFFS) $(ESTIMATES) : $(INFERRED_PARAMETERS) summarize

	perl summarize

veryclean : clean

	rm -f $(INFERRED_PARAMETERS)
# Don't want to delete these in a normal "make clean," because they take
# weeks of CPU time to produce.

clean :

	rm -f $(TITLE).ps
	rm -f for_pdf.ps
	rm -f slides.ps
	rm -fR web
	rm -f $(TITLE).tar.gz
	rm -f $(TITLE).tar
	rm -fR $(TITLE)
	rm -f $(TITLE).pdf
	rm -f index.dvi
	rm -f slides.dvi
	rm -f index.log
	rm -f slides.log
	rm -f index.aux
	rm -f slides.aux
	rm -f index.bbl
	rm -f slides.bbl
	rm -f index.blg
	rm -f slides.blg
	rm -f index.toc
	rm -f index.lof
	rm -f index.lot
	rm -f slides.toc
	rm -f arXiv.tar
	rm -f arXiv.tar.gz
	rm -f $(DIA_EPS_OUTPUTS)
	rm -f $(DIA_PNG_OUTPUTS)
	rm -f $(GNUPLOT_TEX_OUTPUTS)
	rm -f $(GNUPLOT_PNG_OUTPUTS)
	rm -f $(ASYM_FILES)
	rm -f null-posterior.tex
	rm -f main-posterior.tex
	rm -f summary.dat
	rm -f $(COEFFS)
	rm -f $(ESTIMATES)
	rm -f fit.log
