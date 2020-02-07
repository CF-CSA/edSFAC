load 'common.plot'

ca1 = 10.0
cb1 = 0.2067
ca2 = 4.5
cb2 = 1.3815
ca3 = 1.5
cb3 = 4.6943
ca4 = 0.2
cb4 = 12.7105
cc=0.03


# 8-parameter Peng
pa1 = 0.6343
pa2 = 1.5698
pa3 = 3.0362
pa4 = 1.9607
pb1 = .3374
pb2 = 2.4000
pb3 = 13.1385
pb4 = 42.4344

# 10-parameter Peng
ppa1 = 0.4477
ppa2 = 1.1678
ppa3 = 1.5843
ppa4 = 2.8087
ppa5 = 1.1956
ppb1 = 0.2405
ppb2 = 1.5442
ppb3 = 6.3231
ppb4 = 19.4610
ppb5 = 52.0233

# additional parameters for SFAC line
fp = 0.00
fpp=  0.00
mu = 0.00
r  = 1.20
wt = 79.0

set fit logfile "logs/34Se.log" errorvariables

fit  [0:2.0] cm(x) datafile ind 3 usi 1:2 via ca1,cb1,ca2,cb2,ca3,ca4,cb3,cb4,cc
sfac = sprintf ("SFAC Se %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f =\n  %3.1f %3.1f %.3f %.3f %.3f", \
   ca1, cb1, ca2, cb2, ca3, cb3, ca4, cb4, cc, fp, fpp, mu, r, wt)
print sfac
set print "sfac-electron.dfx" append
print sfac

set title sfac 
set label 1 sprintf ("a1=%9.4f +/- %5.4f\nb1=%9.4f +/- %5.4f\na2=%9.4f +/- %5.4f\nb2=%9.4f +/- %5.4f\na3=%9.4f +/- %5.4f\nb3=%9.4f +/- %5.4f\na4=%9.4f +/- %5.4f\nb4=%9.4f +/- %5.4f\nc =%9.4f +/- %5.4f", \
		      ca1, ca1_err, cb1, cb1_err, ca2, ca2_err, cb2, cb2_err, \
		      ca3, ca3_err, cb3, cb3_err, \
		      ca4, ca4_err, cb4, cb4_err, \
		      cc, cc_err)  \
	     at graph 0.5,graph 0.8  font "Courier"

set output "pdfs/34Se.pdf"
plot [0:2.0] datafile ind 3 usi 1:2 ti "Se", cm(x), \
	pm4(x) ti "Peng 4"

