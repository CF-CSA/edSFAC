set terminal pdfcairo enh color solid font "Tex Gyre Heros,14"
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array Si[13] = [ 250, 70, 20, 7, 1800, 500, 100, 15, 0.5, 14, 4]
array Al[13] = [ 190, 20, 50, 5, 2000, 100, 500, 20, 0.5, 13, 3]
array O1[13] = [ -70, -10, 1, -4,  2000, 500, 1, 20, 0.5, 8, -1]
array O[13] = [0.01, 0.3, 0.8, 0.7, 500, 20, 5, 0.1, 0.1, 8,0]

name = "Comparison_OO-_SiAl"

cmSi(x) = Si[1]*exp(-Si[5]*x**2) \
        +Si[2]*exp(-Si[6]*x**2) \
        +Si[3]*exp(-Si[7]*x**2) \
        +Si[4]*exp(-Si[8]*x**2) \
        + Si[9]

cmAl(x) = Al[1]*exp(-Al[5]*x**2) \
        +Al[2]*exp(-Al[6]*x**2) \
        +Al[3]*exp(-Al[7]*x**2) \
        +Al[4]*exp(-Al[8]*x**2) \
        + Al[9]

cmO1(x) = O1[1]*exp(-O1[5]*x**2) \
        +O1[2]*exp(-O1[6]*x**2) \
        +O1[3]*exp(-O1[7]*x**2) \
        +O1[4]*exp(-O1[8]*x**2) \
        + O1[9]

cmO(x) = O[1]*exp(-O[5]*x**2) \
        +O[2]*exp(-O[6]*x**2) \
        +O[3]*exp(-O[7]*x**2) \
        +O[4]*exp(-O[8]*x**2) \
        + O[9]

Si[12] = 10* (Si[10]/10) +1
Si[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Si[12], Si[12]+9)

Al[12] = 10* (Al[10]/10) +1
Al[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Al[12], Al[12]+9)

O1[12] = 10* (O1[10]/10) +1
O1[13] = sprintf("../../sf_Z%02d-Z%02d.txt", O1[12], O1[12]+9)

O[12] = 10* (O[10]/10) +1
O[13] = sprintf("../../sf_Z%02d-Z%02d.txt", O[12], O[12]+9)


set style line 1 lc rgb "grey" lw 2 ps 0.5 pt 2 # Si(IV)
set style line 2 lc rgb "blue" lw 2 ps 0.5 pt 2 # Al(III)
set style line 3 lc rgb "orange" lw 2 ps 0.5 pt 2 # O
set style line 4 lc rgb "red" lw 2 ps 0.5 pt 2 # O-

# adjust these
set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.5" 0.5/1.5, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]"
set x2label "d [\U+212B]"

dmax = 10.0 # in Angstrom
dmin = 0.80 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

logfilename = sprintf ("logs/%02d%s.log", 99, name)
pdffilename = sprintf ("pdfs/%02d%s.pdf", 99, name)

set fit logfile logfilename errorvariables
set output pdffilename

fit [xmin:xmax] cmSi(x) Si[13] \
    usi 1:(0.023934*(Si[10]+Si[11]-column(Si[10]%10+1))/column(1)**2) \
    via Si[1], Si[2], Si[3], Si[4], Si[5], Si[6], Si[7], Si[8], Si[9]

fit [xmin:xmax] cmAl(x) Al[13] \
    usi 1:(0.023934*(Al[10]+Al[11]-column(Al[10]%10+1))/column(1)**2) \
    via Al[1], Al[2], Al[3], Al[4], Al[5], Al[6], Al[7], Al[8], Al[9]

fit [xmin:xmax] cmO1(x) O1[13] \
    usi 1:(0.023934*(O1[10]+O1[11]-column(O1[10]%10+1))/column(1)**2) \
    via O1[1], O1[2], O1[3], O1[4], O1[5], O1[6], O1[7], O1[8], O1[9]

fit [xmin:xmax] cmO(x) O[13] \
    usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) \
    via O[1], O[2], O[3], O[4], O[5], O[6], O[7], O[8], O[9]

plot [xmin:xmax] \
	Si[13] usi 1:(0.023934*(Si[10]+Si[11]-column(Si[10]%10+1))/column(1)**2) noti w p ls 1, \
	cmSi(x) ti "Si^{IV}" w l ls 1, \
	Al[13] usi 1:(0.023934*(Al[10]+Al[11]-column(Al[10]%10+1))/column(1)**2) noti w p ls 2, \
	cmAl(x) ti "Al^{III}"w l ls 2, \
	O1[13] usi 1:(0.023934*(O1[10]+O1[11]-column(O1[10]%10+1))/column(1)**2) noti w p ls 3, \
	cmO1(x) ti "O^{-}" w l ls 3, \
	O[13] usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) noti w p ls 4, \
	cmO(x) ti "O" w l ls 4

