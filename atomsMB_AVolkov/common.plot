set terminal pdfcairo enh color solid font "Tex Gyre Heros,10"
set encoding utf8

set style line 1 lc rgb "black" ps 0.5 pt 2
set style line 2 lc rgb "dark-green" ps 0.5 pt 2


cm(x) = ca1*exp(-cb1*x**2) \
        +ca2*exp(-cb2*x**2) \
        +ca3*exp(-cb3*x**2) \
        +ca4*exp(-cb4*x**2) \
        + cc

# factor = m_0 e^2 /(8pi eps_0 h^2) in suitable units
mb(s, fx) = 0.02393366*(Z0-fx)/s**2

datafile = sprintf("../data/NEUTRAL_ATOMS_FROM_PAPER_1/%s.out", name)
col = 2
print datafile

# adjust these
set x2tics border ("15" 0.0333, "5" 0.1, "2.5" 0.2, "1.0" 0.5, "0.84" 0.595, "0.75" 0.667, "0.5" 1.0)
set xtics nomirror
set xlabel "s [1/\U+212B]"
set x2label "d [\U+212B]"

dmax = 99.0 # in Angstrom
dmin = 0.60 # in Angstrom
xmin=0.5/dmax
xmax=0.5/dmin
set xrange [0:xmax]

logfilename = sprintf ("logs/%02d%s.log", Z0, name)
pdffilename = sprintf ("pdfs/%02d%s.pdf", Z0, name)

set fit prescale
set fit quiet
set fit logfile logfilename errorvariables
set output pdffilename

# for debugging: plot cm parametrization before fitting
plot [0:xmax] \
	datafile \
	usi 1:(mb($1, $2)) ti name.", Mott Bethe", \
 	cm(x) ti "Cromer-Mann fit"

fit [0:xmax] cm(x) datafile \
    usi 1:(mb($1, $2)) \
    via ca1, ca2, ca3, ca4, cb1, cb2, cb3, cb4, cc

sfac = sprintf ("SFAC %2s %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f =\n".\
	"   %3.1f %3.1f %.3f %.3f %.3f", \
        name, ca1, cb1, ca2, cb2, ca3, cb3, ca4, cb4, cc, fp, fpp, mu, r, wt)

print sfac
set print "sfac-electron.dfx" append
print sfac
f000 = ca1+ca2+ca3+ca4+cc;
# print sprintf("REM Estimetated F000 (%s) = %5.4f", name, f000)
# print sprintf("REM OVERRIDE F000 %5.4f", f000)

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

stats [0:xmax] datafile usi 1:(abs(mb($1, $2) - cm($1))) nooutput prefix 'Num'

stats [0:xmax] datafile usi (abs(mb($1, $2))) nooutput name 'Denom'

Rscat = Num_sum_y/Denom_sum
set print 
print (sprintf("Rscat for %d%s after fitting: %4.4f%% (%4.3f / %4.3f)\n", Z0, name, 100.*Rscat, Num_sum_y, Denom_sum))
set print "Rscat_values.log" append
print (sprintf("Rscat for %d%s after fitting: %4.4f%% (%4.3f / %4.3f)\n", Z0, name, 100.*Rscat, Num_sum_y, Denom_sum))

plot [0:xmax] \
	datafile \
	usi 1:(mb($1, $2)) ti name, \
	cm(x) ti "Cromer-Mann fit"

set arrow 1 from Num_pos_min_y, graph 0.1 to Num_pos_min_y, Num_min_y fill
set arrow 2 from Num_pos_max_y, graph 0.9 to Num_pos_max_y, Num_max_y fill
set label 4 at Num_pos_min_y, graph 0.1 "min" center offset 0,-1
set label 5 at Num_pos_max_y, graph 0.9 "max" center offset 0,1

set title "Difference f_{MB} - f_{CM} between Cromer-Mann approximation and Mott-Bethe values"
set label 1 \
	sprintf ("Fit range: %4.2f \U+212B - %4.2f \U+212B", dmax, dmin) \
	at graph 0.2, graph 0.3 
set label 2 \
	sprintf ("s=%10s%4.3f \U+212B^{-1} - %4.3f \U+212B^{-1}", ' ', 0.0, xmax) \
	at graph 0.2, graph 0.22 
set label 3 \
	sprintf ("Rscat = %4.3f%%", 100.*Rscat) \
	at graph 0.2, graph 0.14

plot [0:xmax] \
	datafile \
	usi 1:(cm(column(1))-(mb($1, $2))) noti w lp

unset arrow 1
unset arrow 2
unset label 3
unset label 4
unset label 5

set title "Relative difference (f_{MB} - f_{CM})/f_{MB} between Cromer-Mann approximation and Mott-Bethe values"

plot [0:xmax] \
	datafile \
	usi 1:((cm(column(1))-mb($1, $2))/cm(column(1))) noti w lp
