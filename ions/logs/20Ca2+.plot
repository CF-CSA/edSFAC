

*******************************************************************************
Fri Feb  7 23:12:33 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00909091 : 0.312500]
        #datapoints = 26
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 8.9162201585e+04   0.00e+00  1.43e+01    1.500000e+02   1.000000e+03   4.200000e+01   5.000000e+02   1.000000e+01   3.000000e+00   5.000000e+01   5.000000e+00   1.000000e+00
  17 1.5834078320e-01  -2.25e-02  1.43e-09    7.920630e+02   8.259479e+03   1.161940e+02   1.651844e+03   2.821897e+01   6.647681e+00   3.552567e+02   4.685123e+01   2.256476e+00

After 17 iterations the fit converged.
final sum of squares of residuals : 0.158341
rel. change during last iteration : -2.25317e-07

degrees of freedom    (FIT_NDF)                        : 17
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.0965099
variance of residuals (reduced chisquare) = WSSR/ndf   : 0.00931416

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 792.063          +/- 1.813        (0.2289%)
cb1             = 8259.48          +/- 108          (1.307%)
ca2             = 116.194          +/- 3.101        (2.669%)
cb2             = 1651.84          +/- 60.3         (3.651%)
ca3             = 28.219           +/- 1.44         (5.103%)
ca4             = 6.64768          +/- 0.3442       (5.177%)
cb3             = 355.257          +/- 18.86        (5.31%)
cb4             = 46.8512          +/- 3.461        (7.386%)
cc              = 2.25648          +/- 0.07956      (3.526%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1             0.734  1.000 
ca2             0.704  0.965  1.000 
cb2             0.447  0.919  0.841  1.000 
ca3             0.262  0.761  0.624  0.937  1.000 
ca4             0.081  0.381  0.210  0.546  0.572  1.000 
cb3             0.168  0.606  0.421  0.807  0.881  0.875  1.000 
cb4             0.059  0.291  0.150  0.423  0.412  0.879  0.734  1.000 
cc              0.034  0.177  0.086  0.261  0.234  0.549  0.482  0.852  1.000 
