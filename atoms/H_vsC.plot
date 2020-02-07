load 'common.plot'

ca1 = 0.0349
cb1 = 0.5347
ca2 = 0.1201
cb2 = 3.5867
ca3 = 0.1970
cb3 = 12.3471
ca4 = 0.0573
cb4 = 18.9525
cc  = 1.0


# Values from Peng et al. (1999) Micron 30, 625-648
# Electron atomic scattering factors and scattering potentials of crystals
# a1-a4 + b1-b4 
pa1 = 0.0349
pb1 = 0.5347
pa2 = 0.1201
pb2 = 3.5867
pa3 = 0.1970
pb3 = 12.3471
pa4 = 0.0573
pb4 = 18.9525
pa5 = 0.1195
pb5 = 38.6269

# additional parameters for SFAC line
fp = 0.00
fpp=  0.00
mu = 0.00
r  = 0.31
wt = 1.0

set fit logfile "logs/01H.log" errorvariables

fit  [0:1.5] cm(x) datafile ind 0 usi 1:2 via ca1,cb1,ca2,cb2,ca3,ca4,cb3,cb4,cc
sfac = sprintf ("SFAC H %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f =\n  %3.1f %3.1f %.3f %.3f %.3f", \
   ca1, cb1, ca2, cb2, ca3, cb3, ca4, cb4, cc, fp, fpp, mu, r, wt)

# hydrogen first: overwrite output file
print sfac
set print "sfac-electron.dfx"
print "REM Hydrogen, Z=1"
print sfac

set title sfac 
set label 1 sprintf ("a1=%9.4f +/- %5.4f\nb1=%9.4f +/- %5.4f\na2=%9.4f +/- %5.4f\nb2=%9.4f +/- %5.4f\na3=%9.4f +/- %5.4f\nb3=%9.4f +/- %5.4f\na4=%9.4f +/- %5.4f\nb4=%9.4f +/- %5.4f\nc =%9.4f +/- %5.4f", \
		      ca1, ca1_err, cb1, cb1_err, ca2, ca2_err, cb2, cb2_err, \
		      ca3, ca3_err, cb3, cb3_err, \
		      ca4, ca4_err, cb4, cb4_err, \
		      cc, cc_err)  \
	     at 0.8,0.5  font "Courier"

set output "pdfs/01H.pdf"
plot [0:1.5] datafile ind 0 usi 1:2 ti "H", \
	cm(x) ti "SHELX 9 Parameter fit", \
	pm4(x) ti "Peng 8 Parameter fit"


