set terminal pdfcairo enh color solid font "Tex Gyre Heros,14"
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array C[13] = [ 0.181937, 0.862184, 1.06211, 0.556075, 62.7571, 25.3013, 8.76263, 0.883071, -0.153107, 6, 0]
array Cplus[13] = [ 62.0989, 4.06778, 15.6092, 2.29008, 1820.5, 75.1373, 427.287, 10.163, 0.302259, 6, 1]
array Cminus[13] = [ -66.299, -17.6202, 0.973116, -4.7136, 2022.99, 548.108, 7.18379, 132.847, 0.153478, 6, -1]

name = "iSFAC_C"

cmC(x) = C[1]*exp(-C[5]*x**2) \
        +C[2]*exp(-C[6]*x**2) \
        +C[3]*exp(-C[7]*x**2) \
        +C[4]*exp(-C[8]*x**2) \
        + C[9]

cmCplus(x) = Cplus[1]*exp(-Cplus[5]*x**2) \
        +Cplus[2]*exp(-Cplus[6]*x**2) \
        +Cplus[3]*exp(-Cplus[7]*x**2) \
        +Cplus[4]*exp(-Cplus[8]*x**2) \
        + Cplus[9]

cmCminus(x) = Cminus[1]*exp(-Cminus[5]*x**2) \
        +Cminus[2]*exp(-Cminus[6]*x**2) \
        +Cminus[3]*exp(-Cminus[7]*x**2) \
        +Cminus[4]*exp(-Cminus[8]*x**2) \
        + Cminus[9]

pcC10 = 0.19
pcC14 = 0.09
pcC3 = 0.38

set style line 1 lc rgb "grey" lw 2 ps 0.5 pt 2 # Cu(IV)
set style line 2 lc rgb "blue" lw 2 ps 0.5 pt 2 # Al(III)
set style line 3 lc rgb "orange" lw 2 ps 0.5 pt 2 # O
set style line 4 lc rgb "red" lw 2 ps 0.5 pt 2 # O-

# adjust these
set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.5" 0.5/1.5, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]"
set x2label "d [\U+212B]"

dmax = 25.0 # in Angstrom
dmin = 0.9 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

pdffilename = sprintf ("pdfs/%s.pdf", name)

set output pdffilename

set yrange [-35:20]

plot [0:xmax] \
	pcC10*cmCplus(x) + (1.-pcC10)*cmC(x) ti "C10 (iSFAC)" w l ls 3, \
	pcC14*cmCplus(x) + (1.-pcC14)*cmC(x) ti "C14 (iSFAC)" w l ls 4, \
	pcC3*cmCminus(x) + (1.-pcC3)*cmC(x) ti "C3 (iSFAC)" w l ls 2

pdffilename = sprintf ("pdfs/%s_conventional.pdf", name)
set output pdffilename

plot [0:xmax] \
	cmC(x) ti "C (traditional)" w l ls 1
