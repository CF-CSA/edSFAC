

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
   0 8.9195075284e+04   0.00e+00  1.43e+01    1.500000e+02   1.000000e+03   4.200000e+01   5.000000e+02   1.000000e+01   3.000000e+00   5.000000e+01   5.000000e+00   1.000000e+00
  19 1.5421913167e-01  -1.36e-01  1.43e-09    7.920787e+02   8.264431e+03   1.162671e+02   1.655889e+03   2.830212e+01   6.632248e+00   3.575395e+02   4.804200e+01   2.476326e+00

After 19 iterations the fit converged.
final sum of squares of residuals : 0.154219
rel. change during last iteration : -1.36079e-06

degrees of freedom    (FIT_NDF)                        : 17
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.0952455
variance of residuals (reduced chisquare) = WSSR/ndf   : 0.00907171

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 792.079          +/- 1.799        (0.2271%)
cb1             = 8264.43          +/- 107.7        (1.303%)
ca2             = 116.267          +/- 3.09         (2.657%)
cb2             = 1655.89          +/- 60.32        (3.643%)
ca3             = 28.3021          +/- 1.442        (5.094%)
ca4             = 6.63225          +/- 0.3502       (5.281%)
cb3             = 357.54           +/- 18.96        (5.302%)
cb4             = 48.042           +/- 3.499        (7.283%)
cc              = 2.47633          +/- 0.07601      (3.069%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1             0.734  1.000 
ca2             0.705  0.965  1.000 
cb2             0.448  0.920  0.841  1.000 
ca3             0.263  0.763  0.625  0.938  1.000 
ca4             0.082  0.383  0.210  0.547  0.572  1.000 
cb3             0.168  0.608  0.421  0.808  0.881  0.876  1.000 
cb4             0.059  0.293  0.150  0.425  0.413  0.884  0.735  1.000 
cc              0.034  0.176  0.085  0.258  0.230  0.548  0.476  0.845  1.000 
