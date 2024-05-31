set terminal pdfcairo enh color solid font "Tex Gyre Heros,14"
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array H[13] = [ 0.0195, 0.2452, 0.2253, 0.0120, 108.677, 24.2497, 6.0449, 1.0659, 0.0294, 1, 0]
array Hplus[13] = [ 63.2252, 16.6119, 1.1763, 4.2319, 1922.475, 482.550, 13.3632, 100.4252, 0.1293, 1, 1]

name = "overlay_HH+"

cmH(x) = H[1]*exp(-H[5]*x**2) \
        +H[2]*exp(-H[6]*x**2) \
        +H[3]*exp(-H[7]*x**2) \
        +H[4]*exp(-H[8]*x**2) \
        + H[9]

cmHplus(x) = Hplus[1]*exp(-Hplus[5]*x**2) \
        +Hplus[2]*exp(-Hplus[6]*x**2) \
        +Hplus[3]*exp(-Hplus[7]*x**2) \
        +Hplus[4]*exp(-Hplus[8]*x**2) \
        + Hplus[9]

H[12] = 10* (H[10]/10) +1
H[13] = sprintf("../../sf_Z%02d-Z%02d.txt", H[12], H[12]+9)

Hplus[12] = 10* (Hplus[10]/10) +1
Hplus[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Hplus[12], Hplus[12]+9)

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
dmin = 0.80 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

logfilename = sprintf ("logs/%s.log", name)
pdffilename = sprintf ("pdfs/%s.pdf", name)

set output pdffilename

plot [0:xmax] \
	H[13] usi 1:(0.023934*(H[10]+H[11]-column(H[10]%10+1))/column(1)**2) noti w p ls 1, \
	cmH(x) ti "H^{0}" w l ls 1, \
	Hplus[13] usi 1:(0.023934*(Hplus[10]+Hplus[11]-column(Hplus[10]%10+1))/column(1)**2) noti w p ls 2, \
	cmHplus(x) ti "H^{+}"w l ls 2


