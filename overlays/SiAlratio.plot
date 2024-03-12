set terminal pdfcairo enh color solid font "Tex Gyre Heros,20"
set encoding utf8

# a1 a2 a3 a4 b1 b2 b3 b4 c  Z0 charge
array Si[13] = [ 0.988, 1.90, 2.05, 0.63, 3.2, 15.4, 40, 95, 0.25, 14, 0]
Si[1]           = 0.956964    #     +/- 1.49         (155.7%)
Si[2]           = 1.56214     #     +/- 0.8374       (53.61%)
Si[3]           = 2.0609      #     +/- 2.27         (110.1%)
Si[4]           = 0.956261    #     +/- 0.5888       (61.58%)
Si[5]           = 3.35471     #     +/- 10.28        (306.6%)
Si[6]           = 14.002      #     +/- 25.3         (180.7%)
Si[7]           = 33.4966     #     +/- 22.44        (67%)
Si[8]           = 80.1614     #     +/- 13.49        (16.83%)
Si[9]           = 0.281545    #     +/- 0.7043       (250.2%)

array Al[13] = [ 1.0, 1.9, 2.1, 0.6, 3.7, 19.0, 51.3, 120, 0.3, 13, 0]
Al[1]           = 1.11521     #    +/- 0.06473      (5.805%)
Al[2]           = 1.98605     #    +/- 0.1328       (6.687%)
Al[3]           = 1.96537     #    +/- 0.1335       (6.791%)
Al[4]           = 0.492403    #    +/- 0.1009       (20.49%)
Al[5]           = 4.5419      #    +/- 0.5136       (11.31%)
Al[6]           = 21.8708     #    +/- 1.945        (8.894%)
Al[7]           = 56.4083     #    +/- 4.434        (7.86%)
Al[8]           = 137.894     #    +/- 9.436        (6.843%)
Al[9]           = 0.332957    #    +/- 0.02874      (8.632%)
# array O1[13] = [ -70, -10, 1, -4,  2000, 500, 1, 20, 0.5, 8, -1]

name = "SiAl_eX"

itcdata = "../../../xray/data_ITC/sf_Z11-Z20.txt"

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

Si[12] = 10* (Si[10]/10) +1
Si[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Si[12], Si[12]+9)

Al[12] = 10* (Al[10]/10) +1
Al[13] = sprintf("../../sf_Z%02d-Z%02d.txt", Al[12], Al[12]+9)

set style line 1 lc rgb "blue" lw 2 ps 0.5 pt 2 # Al(III)
set style line 2 lc rgb "grey" lw 2 ps 0.5 pt 2 # Si(IV)
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


# test

set output pdffilename
plot [0:0.6] \
	cmAl(x) w lp ls 1 ti "f_{ED}(Al)", \
	cmSi(x) w lp ls 2 ti "f_{ED}(Si)", \
	itcdata usi 1:4 w lp ls 3 ti "f_{XRD}(Al)", \
	itcdata usi 1:5 w lp ls 4 ti "f_{XRD}(Si)"

set output sprintf ("pdfs/%s_ratio.pdf", name)
plot [0:0.6] \
	cmSi(x)/cmAl(x) w lp ls 1 ti "f_{ED}(Si):f_{ED}(Al)", \
	itcdata usi 1:($5/$4) w lp ls 2 ti "f_{XRD}(Si):f_{XRD}(Al)"


