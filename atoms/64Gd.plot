load 'common.plot'
ca1 =  10
ca2 =  5
ca3 =  1
ca4 =  0.5
cb1 =  15
cb2 =  10
cb3 =  5
cb4 =  1
cc  =  0.3
	 
# 8-parameter fit from Peng
pa1 =  1.3784 
pa2 =  3.7349 
pa3 =  4.8549 
pa4 =  5.2564 
pb1 =   .4105 
pb2 =  3.7014 
pb3 = 20.2877
pb4 = 96.04

# additional parameters for SFAC line
fp = 0.00
fpp=  0.00
# van der Waals radius from en.Wikipedia.org
r  = 1.80 
wt = 157.25
mu = 0.00
name="Gd"
Z="64"
idx= 5
col=10

xmin= 0
xmax=1.0
set xrange [xmin:xmax]

set fit logfile "logs/".Z.name.".plot" errorvariables

fit  [xmin:xmax] cm(x) datafile ind idx usi 1:(column(col)>-999?column(col):1/0) via ca1,cb1,ca2,cb2,ca3,ca4,cb3,cb4,cc
sfac = sprintf ("SFAC %2s %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f =\n  %3.1f %3.1f %.3f %.3f %.3f", \
   name, ca1, cb1, ca2, cb2, ca3, cb3, ca4, cb4, cc, fp, fpp, mu, r, wt)

print sfac
set print "sfac-electron.dfx" append
print sfac

set title sfac 
set label 1 sprintf ("a1=%9.4f +/- %5.4f\nb1=%9.4f +/- %5.4f\na2=%9.4f +/- %5.4f\nb2=%9.4f +/- %5.4f\na3=%9.4f +/- %5.4f\nb3=%9.4f +/- %5.4f\na4=%9.4f +/- %5.4f\nb4=%9.4f +/- %5.4f\nc =%9.4f +/- %5.4f", \
		      ca1, ca1_err, cb1, cb1_err, ca2, ca2_err, cb2, cb2_err, \
		      ca3, ca3_err, cb3, cb3_err, \
		      ca4, ca4_err, cb4, cb4_err, \
		      cc, cc_err)  \
	     at graph 0.5,graph 0.7  font "Courier"

set output "pdfs/".Z.name.".pdf" 
plot datafile ind idx usi 1:(column(col)>-999?column(col):1/0) ti name, \
	cm(x) ti "Cromer-Mann fit"

set title "Difference between Cromer-Mann approximation and tabulated values"
unset label 1
plot datafile ind idx usi 1:(column(col)>-999?cm(column(1))-column(col):1/0) noti  w lp


