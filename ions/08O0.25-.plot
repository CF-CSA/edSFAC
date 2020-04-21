ca1             = -220
ca2             = 50
ca3             = 20
ca4             = 2
cb1             = 500
cb2             = 100
cb3             = 50
cb4             = 5
cc              = 0.5

# additional parameters for SFAC line
fp = 0.00
fpp=  0.00
mu = 0.00
r  = 1.26 # https://en.wikipedia.org/wiki/Ionic_radius. O2-
wt = 15.999 # https://en.wikipedia.org/wiki/Sodium


idx = 0
col = 5
Z = "08"
name = "O25-"

set terminal pdfcairo enh color solid font "Helvetica,10"

set encoding iso_8859_15

datafile="../../ions/O-scatter.txt"

cm(x) = ca1*exp(-cb1*x**2) \
        +ca2*exp(-cb2*x**2) \
        +ca3*exp(-cb3*x**2) \
        +ca4*exp(-cb4*x**2) \
        + cc

pm4(x) = pa1*exp(-pb1*x**2) \
        +pa2*exp(-pb2*x**2) \
        +pa3*exp(-pb3*x**2) \
        +pa4*exp(-pb4*x**2)

pm5(x) = p5a1*exp(-p5b1*x**2) \
        +p5a2*exp(-p5b2*x**2) \
        +p5a3*exp(-p5b3*x**2) \
        +p5a4*exp(-p5b4*x**2) \
        +p5a5*exp(-p5b5*x**2)

set style line 1 lc rgb "black" ps 0.5 pt 2
set style line 2 lc rgb "dark-green" ps 0.5 pt 2

set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror

dmax = 15.0 # in Angstrom
dmin = 0.7 # in Angstrom
xmin=0.5/dmax 
xmax=0.5/dmin
set xrange [0:xmax]

set fit logfile "logs/".Z.name.".log" errorvariables

fit  [xmin:xmax] cm(x) datafile usi 1:($5>-245 ? $5 : 1/0 ) via ca1,cb1,ca2,cb2,ca3,ca4,cb3,cb4,cc
sfac = sprintf ("SFAC %2s %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f =\n  %3.1f %3.1f %.3f %.3f %.3f", \
   name, ca1, cb1, ca2, cb2, ca3, cb3, ca4, cb4, cc, fp, fpp, mu, r, wt)
print sfac
set print "sfac-electron.dfx" append
print sfac

set title sfac 
labelstr=          "a1=%9.4f +/- %5.4f\n"
labelstr= labelstr."a2=%9.4f +/- %5.4f\n"
labelstr= labelstr."a3=%9.4f +/- %5.4f\n"
labelstr= labelstr."a4=%9.4f +/- %5.4f\n"
labelstr= labelstr."b1=%9.4f +/- %5.4f\n"
labelstr= labelstr."b2=%9.4f +/- %5.4f\n"
labelstr= labelstr."b3=%9.4f +/- %5.4f\n"
labelstr= labelstr."b4=%9.4f +/- %5.4f\n"
labelstr= labelstr."c =%9.4f +/- %5.4f"

set label 1 sprintf (labelstr, \
		      ca1, ca1_err, \
		      ca2, ca2_err, \
		      ca3, ca3_err, \
		      ca4, ca4_err, \
		      cb1, cb1_err, \
		      cb2, cb2_err, \
		      cb3, cb3_err, \
		      cb4, cb4_err, \
		      cc, cc_err)  \
	     at graph 0.5,graph 0.7  font "FreeMono,12"

set output "pdfs/".Z.name.".pdf" 
plot datafile usi 1:(column(2) > -999 && column(4)>-999?0.75*column(2)+0.25*column(4):1/0) ti name, \
	'' usi 1:($5 > -245? $5 : 1/0) ti "3/4O+1/4O-", \
	cm(x) ti "Cromer-Mann fit"

set title "Difference between Cromer-Mann approximation and tabulated values"
set label 1 sprintf ("Fit range: %4.2f \305 - %4.2f \305\n%11s%4.3f \305^{-1} - %4.3f \305^{-1}", dmax, dmin, " ", xmin, xmax) at graph 0.2, graph 0.2 font "FreeMono, 12"

plot datafile usi 1:($5>-245 ? cm($1)-$5 : 1/0)  noti w lp


