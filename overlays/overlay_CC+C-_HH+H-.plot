#!/usr/bin/gnuplot -persist
set terminal pdfcairo enh color solid font "Tex Gyre Heros,14" 
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array Cp[13] = [ 62.10, 4.07, 15.61, 2.29, 1820.5, 75.13, 427.29, 10.16, 0.30, 6, +1]
array Cm[13] = [ -57.47, 1.688, -11.08, -1.44, 1419.7, 2.981, 231.41, 0.925, 0.675, 6, -1]
array C0[13] = [ 0.1812, 0.862, 1.062, 0.556, 62.757, 25.30, 8.763, 0.883, -0.153, 6, 0]
array Op[13] = [ 62.36, 16.01, 3.86, 1.64, 1858.6, 449.4, 87.39, 8.372, 0.317, 8, -1]
array Om[13] = [ -57.950, -11.365, -35.301, 21.465, 1452.2, 246.11, 0.5050, 1.091, 15.316, 8, -1]
array O[13] = [22.73, 0.246, 0.825, 0.78, 5000, 29, 11, 3.1, 0.1, 8,0]

name = "overlay_CC+C-_HH+H-"

cmCp(x) = Cp[1]*exp(-Cp[5]*x**2) \
        +Cp[2]*exp(-Cp[6]*x**2) \
        +Cp[3]*exp(-Cp[7]*x**2) \
        +Cp[4]*exp(-Cp[8]*x**2) \
        + Cp[9]

cmCm(x) = Cm[1]*exp(-Cm[5]*x**2) \
        +Cm[2]*exp(-Cm[6]*x**2) \
        +Cm[3]*exp(-Cm[7]*x**2) \
        +Cm[4]*exp(-Cm[8]*x**2) \
        + Cm[9]

cmC0(x) = C0[1]*exp(-C0[5]*x**2) \
        +C0[2]*exp(-C0[6]*x**2) \
        +C0[3]*exp(-C0[7]*x**2) \
        +C0[4]*exp(-C0[8]*x**2) \
        + C0[9]

cmOp(x) = Op[1]*exp(-Op[5]*x**2) \
        +Op[2]*exp(-Op[6]*x**2) \
        +Op[3]*exp(-Op[7]*x**2) \
        +Op[4]*exp(-Op[8]*x**2) \
        + Op[9]

cmOm(x) = Om[1]*exp(-Om[5]*x**2) \
        +Om[2]*exp(-Om[6]*x**2) \
        +Om[3]*exp(-Om[7]*x**2) \
        +Om[4]*exp(-Om[8]*x**2) \
        + Om[9]

cmO(x) = O[1]*exp(-O[5]*x**2) \
        +O[2]*exp(-O[6]*x**2) \
        +O[3]*exp(-O[7]*x**2) \
        +O[4]*exp(-O[8]*x**2) \
        + O[9]

Cm[12] = 10* (Cm[10]/10) +1
Cm[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Cm[12], Cm[12]+9)

Cp[12] = 10* (Cp[10]/10) +1
Cp[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Cp[12], Cp[12]+9)

C0[12] = 10* (C0[10]/10) +1
C0[13] = sprintf("../../sf_Z%02d-Z%02d.txt", C0[12], C0[12]+9)

Op[12] = 10* (Op[10]/10) +1
Op[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Op[12], Op[12]+9)

Om[12] = 10* (Om[10]/10) +1
Om[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Om[12], Om[12]+9)

O[12] = 10* (O[10]/10) +1
O[13] = sprintf("../../sf_Z%02d-Z%02d.txt", O[12], O[12]+9)


set style line 1 lc rgb "gray" lw 2 ps 0.5 pt 2 # Cu(II)
set style line 2 lc rgb "blue" lw 2 ps 0.5 pt 2 # Cu(I)
set style line 3 lc rgb "light-blue" lw 2 ps 0.5 pt 2 # Cu(I)
set style line 4 lc rgb "orange" lw 2 ps 0.5 pt 2 # O
set style line 5 lc rgb "red" lw 2 ps 0.5 pt 2 # O-
set style line 6 lc rgb "dark-red" lw 2 ps 0.5 pt 2 # O-

# adjust these
set x2tics border ("15" 0.5/15, "5" 0.5/5, "2.5" 0.5/2.5, "1.5" 0.5/1.5, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]" offset 0,3.5
set x2label "d [\U+212B]" offset 0,-1.8

dmax = 10.0 # in Angstrom
dmin = 0.90 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

logfilename = sprintf ("logs/%02d%s.log", 98, name)
pdffilename = sprintf ("pdfs/%02d%s.pdf", 98, name)

set fit logfile logfilename errorvariables
set output pdffilename

fit [xmin:xmax] cmCm(x) Cm[13] \
     usi 1:(0.023934*(Cm[10]+Cm[11]-column(Cm[10]%10+1))/column(1)**2) \
     via Cm[1], Cm[2], Cm[3], Cm[4], Cm[5], Cm[6], Cm[7], Cm[8], Cm[9]
 
fit [xmin:xmax] cmCp(x) Cp[13] \
     usi 1:(0.023934*(Cp[10]+Cp[11]-column(Cp[10]%10+1))/column(1)**2) \
     via Cp[1], Cp[2], Cp[3], Cp[4], Cp[5], Cp[6], Cp[7], Cp[8], Cp[9]
 
fit [xmin:xmax] cmC0(x) C0[13] \
     usi 1:(0.023934*(C0[10]+C0[11]-column(C0[10]%10+1))/column(1)**2) \
     via C0[1], C0[2], C0[3], C0[4], C0[5], C0[6], C0[7], C0[8], C0[9]
 
# fit [xmin:xmax] cmOp(x) Op[13] \
#     usi 1:(0.023934*(Op[10]+Op[11]-column(Op[10]%10+1))/column(1)**2) \
#     via Op[1], Op[2], Op[3], Op[4], Op[5], Op[6], Op[7], Op[8], Op[9]
# 
# fit [xmin:xmax] cmOm(x) Om[13] \
#     usi 1:(0.023934*(Om[10]+Om[11]-column(Om[10]%10+1))/column(1)**2) \
#     via Om[1], Om[2], Om[3], Om[4], Om[5], Om[6], Om[7], Om[8], Om[9]
# 
# fit [xmin:xmax] cmO(x) O[13] \
#     usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) \
#     via O[1], O[2], O[3], O[4], O[5], O[6], O[7], O[8], O[9]
# 
set x2label "Resolution [\U+00C5]"
set title "Electron scattering for ions"
plot [xmin:xmax] \
	C0[13] usi 1:(0.023934*(C0[10]+C0[11]-column(C0[10]%10+1))/column(1)**2) noti w p ls 1, \
	cmC0(x) ti "C^{}" w l ls 1, \
	Cm[13] usi 1:(0.023934*(Cm[10]+Cm[11]-column(Cm[10]%10+1))/column(1)**2) noti w p ls 2, \
	cmCm(x) ti "C^{-}" w l ls 2, \
	Cp[13] usi 1:(0.023934*(Cp[10]+Cp[11]-column(Cp[10]%10+1))/column(1)**2) noti w p ls 3, \
	cmCp(x) ti "C^{+}" w l ls 3
#	Om[13] usi 1:(0.023934*(Om[10]+Om[11]-column(Om[10]%10+1))/column(1)**2) noti w p ls 4, \
#	cmOm(x) ti "O^{-}" w l ls 3, \
#	Op[13] usi 1:(0.023934*(Op[10]+Op[11]-column(Op[10]%10+1))/column(1)**2) noti w p ls 5, \
#	cmOp(x) ti "O^{+}" w l ls 3, \
#	O[13] usi 1:(0.023934*(O[10]+O[11]-column(O[10]%10+1))/column(1)**2) noti w p ls 6, \
#	cmO(x) ti "O" w l ls 4


