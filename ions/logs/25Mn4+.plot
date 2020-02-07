

*******************************************************************************
Fri Feb  7 23:12:34 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00909091 : 0.312500]
        #datapoints = 23
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 4.3251076722e+05   0.00e+00  5.71e+01    4.000000e+02   1.000000e+02   8.000000e+01   5.000000e+02   1.000000e+00   1.000000e+00   1.000000e+02   5.000000e+00   1.000000e+00
 124 2.1469887226e-03  -8.68e-02  5.71e-08    1.846537e+01   1.463291e+02   1.595985e+02   1.487478e+03   5.331318e+01   6.292402e+00   4.908457e+02   2.883799e+01   2.059903e+00

After 124 iterations the fit converged.
final sum of squares of residuals : 0.00214699
rel. change during last iteration : -8.67635e-07

degrees of freedom    (FIT_NDF)                        : 14
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.0123837
variance of residuals (reduced chisquare) = WSSR/ndf   : 0.000153356

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 18.4654          +/- 0.7023       (3.803%)
cb1             = 146.329          +/- 5.406        (3.695%)
ca2             = 159.598          +/- 2.741        (1.718%)
cb2             = 1487.48          +/- 37.73        (2.536%)
ca3             = 53.3132          +/- 1.752        (3.285%)
ca4             = 6.2924           +/- 0.2114       (3.36%)
cb3             = 490.846          +/- 16.42        (3.346%)
cb4             = 28.838           +/- 1.287        (4.463%)
cc              = 2.0599           +/- 0.04775      (2.318%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1             0.910  1.000 
ca2             0.416  0.294  1.000 
cb2             0.791  0.645  0.852  1.000 
ca3             0.763  0.572  0.788  0.979  1.000 
ca4             0.747  0.954  0.197  0.494  0.401  1.000 
cb3             0.969  0.868  0.564  0.901  0.887  0.716  1.000 
cb4             0.618  0.874  0.156  0.410  0.318  0.963  0.610  1.000 
cc              0.503  0.773  0.123  0.336  0.251  0.878  0.511  0.972  1.000 
