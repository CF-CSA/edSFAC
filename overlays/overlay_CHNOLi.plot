set terminal pdfcairo enh color solid font "Tex Gyre Heros,14"
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array C[13] = [ 0.40, 1.1, 0.8, 0.15, 45, 18, 6, 1, 0.05, 6, 0]
array H[13] = [ 0.19, 0.24, 0.10, 0.01, 30, 9, 1.5, 1.0, 0.05, 1, 0]
array N[13] = [ 0.2, 0.6, 0.9, 0.5, 45, 21, 8.4, 1.9, 0.03, 7, 0]
array O[13] = [0.1, 0.6, 1.0, 0.5, 39, 17, 5.0, 0.4, 0.1, 8,0]
array Li[13] = [0.6, 1.4, 0.8, 0.3, 154, 70, 25, 5.0, 0.1, 3,0]

name = "overlay_CHNOLi"

cmC(x) = C[1]*exp(-C[5]*x**2) \
        +C[2]*exp(-C[6]*x**2) \
        +C[3]*exp(-C[7]*x**2) \
        +C[4]*exp(-C[8]*x**2) \
        + C[9]

cmH(x) = H[1]*exp(-H[5]*x**2) \
        +H[2]*exp(-H[6]*x**2) \
        +H[3]*exp(-H[7]*x**2) \
        +H[4]*exp(-H[8]*x**2) \
        + H[9]

cmN(x) = N[1]*exp(-N[5]*x**2) \
        +N[2]*exp(-N[6]*x**2) \
        +N[3]*exp(-N[7]*x**2) \
        +N[4]*exp(-N[8]*x**2) \
        + N[9]

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

cmLi(x) = Li[1]*exp(-Li[5]*x**2) \
        +Li[2]*exp(-Li[6]*x**2) \
        +Li[3]*exp(-Li[7]*x**2) \
        +Li[4]*exp(-Li[8]*x**2) \
        + Li[9]

C[12] = 10* (C[10]/10) +1
C[13] = sprintf("../../sf_Z%02d-Z%02d.txt", C[12], C[12]+9)

H[12] = 10* (H[10]/10) +1
H[13] = sprintf("../../sf_Z%02d-Z%02d.txt", H[12], H[12]+9)

N[12] = 10* (N[10]/10) +1
N[13] = sprintf("../../sf_Z%02d-Z%02d.txt", N[12], N[12]+9)

O[12] = 10* (O[10]/10) +1
O[13] = sprintf("../../sf_Z%02d-Z%02d.txt", O[12], O[12]+9)

Li[12] = 10* (Li[10]/10) +1
Li[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Li[12], Li[12]+9)

set style line 1 lc rgb "grey" lw 2 ps 0.5 pt 2 # C
set style line 2 lc rgb "black" lw 2 ps 0.5 pt 2 # Li
set style line 3 lc rgb "blue" lw 2 ps 0.5 pt 2 # N
set style line 4 lc rgb "orange" lw 2 ps 0.5 pt 2 # O
set style line 5 lc rgb "red" lw 2 ps 0.5 pt 2 # Li

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

set fit logfile logfilename errorvariables
set output pdffilename

fit [xmin:xmax] cmC(x) C[13] \
    usi 1:(0.023934*(C[10]+C[11]-column(C[10]%10+1))/column(1)**2) \
    via C[1], C[2], C[3], C[4], C[5], C[6], C[7], C[8], C[9]

fit [xmin:xmax] cmH(x) H[13] \
    usi 1:(0.023934*(H[10]+H[11]-column(H[10]%10+1))/column(1)**2) \
    via H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8], H[9]

fit [xmin:xmax] cmN(x) N[13] \
    usi 1:(0.023934*(N[10]+N[11]-column(N[10]%10+1))/column(1)**2) \
    via N[1], N[2], N[3], N[4], N[5], N[6], N[7], N[8], N[9]

fit [xmin:xmax] cmO(x) O[13] \
    usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) \
    via O[1], O[2], O[3], O[4], O[5], O[6], O[7], O[8], O[9]

fit [xmin:xmax] cmLi(x) Li[13] \
    usi 1:(0.023934*(Li[10]+Li[11]-column(Li[10]%10+1))/column(1)**2) \
    via Li[1], Li[2], Li[3], Li[4], Li[5], Li[6], Li[7], Li[8], Li[9]

plot [xmin:xmax] \
	C[13] usi 1:(0.023934*(C[10]+C[11]-column(C[10]%10+1))/column(1)**2) noti w p ls 1, \
	cmC(x) ti "C" w l ls 1, \
	H[13] usi 1:(0.023934*(H[10]+H[11]-column(H[10]%10+1))/column(1)**2) noti w p ls 1, \
	cmH(x) ti "H" w l ls 2, \
	N[13] usi 1:(0.023934*(N[10]+N[11]-column(N[10]%10+1))/column(1)**2) noti w p ls 2, \
	cmN(x) ti "N"w l ls 3, \
	O[13] usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) noti w p ls 4, \
	cmO(x) ti "O" w l ls 4, \
	Li[13] usi 1:(0.023934*(Li[10]+Li[11]-column(Li[10]%10+1))/column(1)**2) noti w p ls 4, \
	cmLi(x) ti "Li" w l ls 5


