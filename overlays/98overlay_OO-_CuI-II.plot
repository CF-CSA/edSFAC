set terminal pdfcairo enh color solid font "Tex Gyre Heros,14" 
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array CuII[13] = [ 150, 30, 9, 4, 1800, 500, 100, 10, 1.5, 29, 2]
array CuI[13] = [ 62, 16, 5, 3, 1800, 400, 80, 9, 1.5, 29, 1]
array O1[13] = [ -70, -10, 1, -4,  2000, 500, 1, 20, 0.5, 8, -1]
array O[13] = [0.01, 0.3, 0.8, 0.7, 500, 20, 5, 0.1, 0.1, 8,0]

name = "Comparison_OO-_CuICuII"

cmCuII(x) = CuII[1]*exp(-CuII[5]*x**2) \
        +CuII[2]*exp(-CuII[6]*x**2) \
        +CuII[3]*exp(-CuII[7]*x**2) \
        +CuII[4]*exp(-CuII[8]*x**2) \
        + CuII[9]

cmCuI(x) = CuI[1]*exp(-CuI[5]*x**2) \
        +CuI[2]*exp(-CuI[6]*x**2) \
        +CuI[3]*exp(-CuI[7]*x**2) \
        +CuI[4]*exp(-CuI[8]*x**2) \
        + CuI[9]

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

CuII[12] = 10* (CuII[10]/10) +1
CuII[13] = sprintf("../../sf_Z%02d-Z%02d.txt", CuII[12], CuII[12]+9)

CuI[12] = 10* (CuI[10]/10) +1
CuI[13] = sprintf("../../sf_Z%02d-Z%02d.txt", CuI[12], CuI[12]+9)

O1[12] = 10* (O1[10]/10) +1
O1[13] = sprintf("../../sf_Z%02d-Z%02d.txt", O1[12], O1[12]+9)

O[12] = 10* (O[10]/10) +1
O[13] = sprintf("../../sf_Z%02d-Z%02d.txt", O[12], O[12]+9)


set style line 1 lc rgb "black" lw 2 ps 0.5 pt 2 # Cu(II)
set style line 2 lc rgb "blue" lw 2 ps 0.5 pt 2 # Cu(I)
set style line 3 lc rgb "orange" lw 2 ps 0.5 pt 2 # O
set style line 4 lc rgb "red" lw 2 ps 0.5 pt 2 # O-

# adjust these
set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.5" 0.5/1.5, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]" offset 0,3.5
set x2label "d [\U+212B]" offset 0,-1.8

dmax = 25.0 # in Angstrom
dmin = 0.80 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

logfilename = sprintf ("logs/%02d%s.log", 98, name)
pdffilename = sprintf ("pdfs/%02d%s.pdf", 98, name)

set fit logfile logfilename errorvariables
set output pdffilename

fit [xmin:xmax] cmCuII(x) CuII[13] \
    usi 1:(0.023934*(CuII[10]+CuII[11]-column(CuII[10]%10+1))/column(1)**2) \
    via CuII[1], CuII[2], CuII[3], CuII[4], CuII[5], CuII[6], CuII[7], CuII[8], CuII[9]

fit [xmin:xmax] cmCuI(x) CuI[13] \
    usi 1:(0.023934*(CuI[10]+CuI[11]-column(CuI[10]%10+1))/column(1)**2) \
    via CuI[1], CuI[2], CuI[3], CuI[4], CuI[5], CuI[6], CuI[7], CuI[8], CuI[9]

fit [xmin:xmax] cmO1(x) O1[13] \
    usi 1:(0.023934*(O1[10]+O1[11]-column(O1[10]%10+1))/column(1)**2) \
    via O1[1], O1[2], O1[3], O1[4], O1[5], O1[6], O1[7], O1[8], O1[9]

fit [xmin:xmax] cmO(x) O[13] \
    usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) \
    via O[1], O[2], O[3], O[4], O[5], O[6], O[7], O[8], O[9]

plot [xmin:xmax] \
	CuII[13] usi 1:(0.023934*(CuII[10]+CuII[11]-column(CuII[10]%10+1))/column(1)**2) noti w p ls 1, \
	cmCuII(x) ti "Cu^{II}" w l ls 1, \
	CuI[13] usi 1:(0.023934*(CuI[10]+CuI[11]-column(CuI[10]%10+1))/column(1)**2) noti w p ls 2, \
	cmCuI(x) ti "Cu^{I}"w l ls 2, \
	O1[13] usi 1:(0.023934*(O1[10]+O1[11]-column(O1[10]%10+1))/column(1)**2) noti w p ls 3, \
	cmO1(x) ti "O^{-}" w l ls 3, \
	O[13] usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) noti w p ls 4, \
	cmO(x) ti "O" w l ls 4


