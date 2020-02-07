

*******************************************************************************
Fri Feb  7 22:59:06 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 1.0166546902e+00   0.00e+00  2.42e-01    9.000000e-01   1.500000e+01   5.000000e-01   1.000000e+01   1.000000e-01   5.000000e-02   5.000000e+00   1.000000e+00   3.000000e-01
1195 3.7795159212e-06  -9.91e-01  2.42e-04    9.607679e-02   4.040779e+01   5.019926e-01   1.760027e+01   7.886350e-01   5.098602e-01   6.988477e+00   1.968287e+00   8.697681e-02

After 1195 iterations the fit converged.
final sum of squares of residuals : 3.77952e-06
rel. change during last iteration : -9.9074e-06

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.000319608
variance of residuals (reduced chisquare) = WSSR/ndf   : 1.02149e-07

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.0960768        +/- 0.05484      (57.08%)
cb1             = 40.4078          +/- 6.375        (15.78%)
ca2             = 0.501993         +/- 0.095        (18.92%)
cb2             = 17.6003          +/- 3.175        (18.04%)
ca3             = 0.788635         +/- 0.0599       (7.595%)
ca4             = 0.50986          +/- 0.0832       (16.32%)
cb3             = 6.98848          +/- 1.182        (16.91%)
cb4             = 1.96829          +/- 0.3112       (15.81%)
cc              = 0.0869768        +/- 0.01156      (13.29%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.993  1.000 
ca2             0.842 -0.783  1.000 
cb2            -0.976  0.946 -0.938  1.000 
ca3            -0.953  0.933 -0.809  0.939  1.000 
ca4            -0.832  0.781 -0.985  0.922  0.746  1.000 
cb3            -0.886  0.838 -0.992  0.961  0.824  0.992  1.000 
cb4            -0.792  0.741 -0.966  0.888  0.685  0.995  0.976  1.000 
cc             -0.746  0.695 -0.937  0.845  0.618  0.978  0.949  0.994  1.000 


*******************************************************************************
Fri Feb  7 23:03:49 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 1.0166546902e+00   0.00e+00  2.42e-01    9.000000e-01   1.500000e+01   5.000000e-01   1.000000e+01   1.000000e-01   5.000000e-02   5.000000e+00   1.000000e+00   3.000000e-01
 510 4.3302931640e-06   0.00e+00  2.42e-03    1.970732e-01   3.297652e+01   7.262243e-01   1.267936e+01   7.412962e-01   2.916536e-01   4.350677e+00   8.695750e-01   2.720296e-02

The fit was stopped by the user after 510 iterations.
final sum of squares of residuals : 4.33029e-06
rel. change during last iteration : 0

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.000342104
variance of residuals (reduced chisquare) = WSSR/ndf   : 1.17035e-07

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.197073         +/- 0.04379      (22.22%)
cb1             = 32.9765          +/- 2.216        (6.72%)
ca2             = 0.726224         +/- 0.1621       (22.32%)
cb2             = 12.6794          +/- 1.943        (15.32%)
ca3             = 0.741296         +/- 0.1639       (22.1%)
ca4             = 0.291654         +/- 0.09045      (31.01%)
cb3             = 4.35068          +/- 2.068        (47.53%)
cb4             = 0.869575         +/- 2.319        (266.7%)
cc              = 0.027203         +/- 0.269        (988.9%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.992  1.000 
ca2             0.886 -0.829  1.000 
cb2            -0.969  0.932 -0.973  1.000 
ca3             0.689 -0.623  0.923 -0.829  1.000 
ca4            -0.912  0.861 -0.992  0.982 -0.878  1.000 
cb3            -0.880  0.825 -0.998  0.967 -0.941  0.985  1.000 
cb4            -0.824  0.766 -0.982  0.930 -0.976  0.956  0.991  1.000 
cc             -0.810  0.751 -0.975  0.918 -0.982  0.945  0.987  0.999  1.000 


*******************************************************************************
Fri Feb  7 23:04:12 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 1.0166546902e+00   0.00e+00  2.42e-01    9.000000e-01   1.500000e+01   5.000000e-01   1.000000e+01   1.000000e-01   5.000000e-02   5.000000e+00   1.000000e+00   3.000000e-01
1195 3.7795159212e-06  -9.91e-01  2.42e-04    9.607679e-02   4.040779e+01   5.019926e-01   1.760027e+01   7.886350e-01   5.098602e-01   6.988477e+00   1.968287e+00   8.697681e-02

After 1195 iterations the fit converged.
final sum of squares of residuals : 3.77952e-06
rel. change during last iteration : -9.9074e-06

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.000319608
variance of residuals (reduced chisquare) = WSSR/ndf   : 1.02149e-07

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.0960768        +/- 0.05484      (57.08%)
cb1             = 40.4078          +/- 6.375        (15.78%)
ca2             = 0.501993         +/- 0.095        (18.92%)
cb2             = 17.6003          +/- 3.175        (18.04%)
ca3             = 0.788635         +/- 0.0599       (7.595%)
ca4             = 0.50986          +/- 0.0832       (16.32%)
cb3             = 6.98848          +/- 1.182        (16.91%)
cb4             = 1.96829          +/- 0.3112       (15.81%)
cc              = 0.0869768        +/- 0.01156      (13.29%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.993  1.000 
ca2             0.842 -0.783  1.000 
cb2            -0.976  0.946 -0.938  1.000 
ca3            -0.953  0.933 -0.809  0.939  1.000 
ca4            -0.832  0.781 -0.985  0.922  0.746  1.000 
cb3            -0.886  0.838 -0.992  0.961  0.824  0.992  1.000 
cb4            -0.792  0.741 -0.966  0.888  0.685  0.995  0.976  1.000 
cc             -0.746  0.695 -0.937  0.845  0.618  0.978  0.949  0.994  1.000 
