# Ph.D. thesis of Daniel C. Hatton

If you just want to read the thesis, then there's a
pre-compiled copy in PDF format in the file
`PER_CoCu.pdf`, and a pre-compiled copy in HTML
format in the directory `web`

If you'd prefer to compile the thesis from source, and
you have a make application and tcsh, then the commands

make postscript

make html

make pdf

make transparent

should do what they sound like they're supposed to do.  Depending
exactly what you're trying to achieve, you may need LaTeX, BibTeX,
LaTeX2HTML, various standard styles which are distributed with the
above, netpbm, ps2pdf, tar, gzip, dia, gnuplot, perl, libpng, and zlib
installed on your computer.

It's also rather likely that you'll need to expand TeX's memory beyond
the default amount;
<http://www.tex.ac.uk/cgi-bin/texfaq2html?label=enlarge> gives some
advice on how to achieve this.  Similarly, there's a good chance that
you'll need to increase LaTeX2HTML's $PAPERSIZE variable.

Note that some automatically generated files, which take a lot of CPU
time to produce, are left in place by "make clean."  "make veryclean"
will get rid of them if you _really_ want to.


