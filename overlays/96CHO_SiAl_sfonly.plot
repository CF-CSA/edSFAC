# additional parameters for SFAC line
fp = 0.00
fpp=  0.00
mu = 0.00
r  = 0.77 # Covalent
wt = 12.011 # https://en.wikipedia.org/wiki/Carbon

name="C"
Z="06"
idx=0
col=7

set terminal pdfcairo enh color solid font "Tex Gyre Heros,12"

set encoding utf8

datafile="../../e-scatter.txt"

set style line 1 lc rgb "black" ps 0.5 pt 2
set style line 2 lc rgb "dark-green" ps 0.5 pt 2

set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror

dmax = 999.0 # in Angstrom
dmin = 0.60 # in Angstrom
# xmin=0.5/dmax 
xmin = 0
xmax=0.5/dmin
set xrange [0:xmax]

# sumCM = ca1*cb1 + ca2+cb2 + ca3*cb3 + ca4*cb4 + cc
# logtext = sprintf("REM: sum CM = %8.3f\n", sumCM)
# print logtext

set output "pdfs/96CHO_SiAl_sfonly.pdf" 
plot \
	datafile ind 0 usi 1:($7>-999?$7:1/0) ti "C", \
	'' ind 0 usi 1:($2>-999?$2:1/0) ti "H", \
	'' ind 0 usi 1:($9>-999?$9:1/0) ti "O", \
	'' ind 1 usi 1:($3>-999?$3:1/0) ti "Al" w lp

