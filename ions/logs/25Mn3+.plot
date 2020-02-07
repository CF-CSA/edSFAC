

*******************************************************************************
Fri Feb  7 23:12:33 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00909091 : 0.312500]
        #datapoints = 23
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 4.5683305619e+05   0.00e+00  5.71e+01    4.000000e+02   1.000000e+02   8.000000e+01   5.000000e+02   1.000000e+00   1.000000e+00   1.000000e+02   5.000000e+00   1.000000e+00
 108 1.2390117554e-03  -5.61e-02  5.71e-08    1.349301e+01   1.413330e+02   1.187196e+02   1.456481e+03   3.889669e+01   4.927053e+00   4.761722e+02   2.593480e+01   1.987424e+00

After 108 iterations the fit converged.
final sum of squares of residuals : 0.00123901
rel. change during last iteration : -5.61342e-07

degrees of freedom    (FIT_NDF)                        : 14
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.00940749
variance of residuals (reduced chisquare) = WSSR/ndf   : 8.85008e-05

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 13.493           +/- 0.5134       (3.805%)
cb1             = 141.333          +/- 5.252        (3.716%)
ca2             = 118.72           +/- 1.81         (1.525%)
cb2             = 1456.48          +/- 34.24        (2.351%)
ca3             = 38.8967          +/- 1.205        (3.098%)
ca4             = 4.92705          +/- 0.1421       (2.885%)
cb3             = 476.172          +/- 15.63        (3.283%)
cb4             = 25.9348          +/- 1.216        (4.689%)
cc              = 1.98742          +/- 0.04561      (2.295%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1             0.911  1.000 
ca2             0.382  0.265  1.000 
cb2             0.787  0.643  0.832  1.000 
ca3             0.749  0.557  0.767  0.977  1.000 
ca4             0.761  0.958  0.178  0.501  0.395  1.000 
cb3             0.969  0.869  0.530  0.899  0.878  0.726  1.000 
cb4             0.620  0.873  0.137  0.409  0.305  0.953  0.611  1.000 
cc              0.516  0.783  0.110  0.343  0.246  0.873  0.522  0.978  1.000 
