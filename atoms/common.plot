set terminal pdfcairo enh color solid font "Tex Gyre Heros,10"
set encoding utf8

set style line 1 lc rgb "black" ps 0.5 pt 2
set style line 2 lc rgb "dark-green" ps 0.5 pt 2

datafile="../../e-scatter.txt"

cm(x) = ca1*exp(-cb1*x**2) \
        +ca2*exp(-cb2*x**2) \
        +ca3*exp(-cb3*x**2) \
        +ca4*exp(-cb4*x**2) \
        + cc



# adjust these
set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]"
set x2label "d [\U+212B]"

dmax = 22.0 # in Angstrom
dmin = 0.65 # in Angstrom
# xmin=0.5/dmax 
xmin = 0
xmax=0.5/dmin
set xrange [0:xmax]

set fit logfile "logs/".Z.name.".log" errorvariables

fit  [xmin:xmax] cm(x) datafile ind idx usi 1:(column(col)>-999?column(col):1/0) via ca1,cb1,ca2,cb2,ca3,ca4,cb3,cb4,cc
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

stats [xmin:xmax] datafile ind idx usi 1:(column(col)>-999?abs(column(col)-cm($1)):1/0) nooutput prefix 'Num'

stats [xmin:xmax] datafile ind idx usi 1:(column(col)>-999?abs(column(col)):1/0) nooutput name 'Denom'

Rscat = Num_sum_y/Denom_sum_y
set print "Rscat_values.log" append
print (sprintf("Rscat for %s%s after fitting: %4.3f%% (%4.3f / %4.3f)\n", \
	Z, name, 100.*Rscat, Num_sum_y, Denom_sum_y))

set output "pdfs/".Z.name.".pdf" 
plot datafile ind idx usi 1:(column(col)>-999?column(col):1/0) ti name, \
	cm(x) ti "Cromer-Mann fit"

set title "Absolute difference between Cromer-Mann approximation and tabulated values"
if ( xmin == 0)  {
set label 1 sprintf ("Fit \U+221E \U+212B - %4.2f \U+212B\n%11s%4.3f \U+212B^{-1} - %4.3f \U+212B^{-1}", dmin, " ", xmin, xmax) at graph 0.2, graph 0.2
}
else {
set label 1 sprintf ("Fit range: %4.2f \U+212B - %4.2f \U+212B\n%11s%4.3f \U+212B^{-1} - %4.3f \U+212B^{-1}", dmax, dmin, " ", xmin, xmax) at graph 0.2, graph 0.2 
}
plot datafile ind idx usi 1:(column(col)>-999?cm(column(1))-column(col):1/0) noti w lp

set title "Relative difference (f_{tab} - f_{CM})/f_{tab} between Cromer-Mann approximation and tabulated values"
unset label 1
set label 2 \
	sprintf ("s=%10s%4.3f \U+212B^{-1} - %4.3f \U+212B^{-1}", ' ', xmin, xmax) \
	at graph 0.2, graph 0.22 
set label 3 \
	sprintf ("Rscat = %4.3f%%", 100.*Rscat) \
	at graph 0.2, graph 0.14

plot [xmin:xmax] datafile ind idx usi 1:(column(col)>-999? (cm(column(1))-column(col))/column(col):1/0) noti w lp


