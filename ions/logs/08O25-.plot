

*******************************************************************************
Fri Feb  7 23:12:28 2020


FIT:    data read from datafile usi 1:($5>-245 ? $5 : 1/0 )
        format = x:z
        x range restricted to [0.0333333 : 0.714286]
        #datapoints = 39
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 2.2602185384e+04   0.00e+00  9.07e+00   -4.000000e+01   1.200000e+01  -1.000000e+01   5.000000e+00   1.000000e+01   1.000000e+00   1.000000e+01   5.000000e+00   5.000000e-01
 825 1.1294889220e-03  -7.28e-01  9.07e-04   -8.737304e+00   9.839346e+02   1.178985e+00   9.901817e+00  -2.036644e+00   8.453011e-01   2.108020e+02   1.049373e+00  -2.077008e-01

After 825 iterations the fit converged.
final sum of squares of residuals : 0.00112949
rel. change during last iteration : -7.27648e-06

degrees of freedom    (FIT_NDF)                        : 30
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.00613593
variance of residuals (reduced chisquare) = WSSR/ndf   : 3.76496e-05

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = -8.7373          +/- 0.1768       (2.024%)
cb1             = 983.935          +/- 24.63        (2.503%)
ca2             = 1.17898          +/- 0.227        (19.25%)
cb2             = 9.90182          +/- 1.274        (12.86%)
ca3             = -2.03664         +/- 0.07467      (3.666%)
ca4             = 0.845301         +/- 1.136        (134.4%)
cb3             = 210.802          +/- 6.518        (3.092%)
cb4             = 1.04937          +/- 2.739        (261%)
cc              = -0.207701        +/- 1.367        (658.3%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.851  1.000 
ca2            -0.076  0.229  1.000 
cb2             0.095 -0.278 -0.986  1.000 
ca3             0.595 -0.922 -0.251  0.310  1.000 
ca4            -0.067  0.202  0.984 -0.947 -0.221  1.000 
cb3            -0.424  0.796  0.451 -0.534 -0.921  0.400  1.000 
cb4             0.072 -0.216 -0.994  0.966  0.237 -0.998 -0.426  1.000 
cc              0.069 -0.209 -0.989  0.957  0.229 -0.999 -0.413  0.999  1.000 
