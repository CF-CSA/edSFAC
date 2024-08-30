set terminal pdfcairo enh color solid font "Tex Gyre Heros,10"
set encoding utf8

set style line 1 lc rgb "black" ps 0.5 pt 2
set style line 2 lc rgb "dark-green" ps 0.5 pt 2


cm(x) = ca1*exp(-cb1*x**2) \
        +ca2*exp(-cb2*x**2) \
        +ca3*exp(-cb3*x**2) \
        +ca4*exp(-cb4*x**2) \
        + cc

datafile= "../literature/TableS03_X-ray_scattering_factors_for_all_318_species.txt"

# adjust these
set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]"
set x2label "d [\U+212B]"

dmax = 16.00  # in Angstrom
dmin = 0.70 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

logfilename = sprintf ("logs/%02d%s.log", Z, name)
pdffilename = sprintf ("pdfs/%02d%s.pdf", Z, name)

set fit logfile logfilename errorvariables
set output pdffilename

# for debugging: plot cm parametrization before fitting
#plot [xmin:xmax] datafile ind fidx usi 1:(0.023934*(Z-column(col))/column(1)**2) ti name."pre fit", \
#	cm(x) ti "Cromer-Mann fit"

fit [xmin:xmax] cm(x) datafile \
    index fidx \
    usi 1:(0.023934*(Z-column(col))/column(1)**2) \
    via ca1, ca2, ca3, ca4, cb1, cb2, cb3, cb4, cc

sfac = sprintf ("SFAC %2s %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f =\n".\
	"   %3.1f %3.1f %.3f %.3f %.3f", \
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

plot [xmin:xmax] datafile index fidx \
	usi 1:(0.023934*(Z-column(col))/column(1)**2) ti name, \
	cm(x) ti "Cromer-Mann fit"

set title "Absoulte Difference f_{tab} - f_{CM} between Cromer-Mann approximation and tabulated values"
set label 1 sprintf ("Fit range: %4.2f \U+212B - %4.2f \U+212B\n s=%11s%4.3f \U+212B^{-1} - %4.3f \U+212B^{-1}", dmax, dmin, " ", xmin, xmax) at graph 0.2, graph 0.2 

plot [xmin:xmax] datafile index fidx \
	usi 1:(cm(column(1))-(0.023934*(Z-column(col))/column(1)**2)) noti w lp

set title "Relative difference (f_{tab} - f_{CM})/f_{tab} between Cromer-Mann approximation and tabulated values"
set label 1 sprintf ("Fit range: %4.2f \U+212B - %4.2f \U+212B\n s=%11s%4.3f \U+212B^{-1} - %4.3f \U+212B^{-1}", dmax, dmin, " ", xmin, xmax) at graph 0.2, graph 0.2 

plot [xmin:xmax] datafile index fidx \
	usi 1:((cm(column(1))-(0.023934*(Z-column(col))/column(1)**2))/cm(column(1))) noti w lp

