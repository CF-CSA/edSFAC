

*******************************************************************************
Fri Feb  7 22:59:00 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 2.2875030223e+01   0.00e+00  5.58e-01    2.500000e+00   1.500000e+01   5.000000e-01   1.000000e+01   2.000000e-02   1.000000e-02   5.000000e+00   1.000000e+00   5.000000e-01
1109 3.0892934571e-06  -2.62e-03  5.58e-09    2.110645e-01   5.993753e+01   8.678794e-01   2.413561e+01   9.239991e-01   4.312476e-01   9.089299e+00   2.329342e+00   7.496960e-02

After 1109 iterations the fit converged.
final sum of squares of residuals : 3.08929e-06
rel. change during last iteration : -2.6205e-08

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.000288954
variance of residuals (reduced chisquare) = WSSR/ndf   : 8.34944e-08

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.211064         +/- 0.02417      (11.45%)
cb1             = 59.9375          +/- 2.281        (3.805%)
ca2             = 0.867879         +/- 0.02937      (3.384%)
cb2             = 24.1356          +/- 1.029        (4.262%)
ca3             = 0.923999         +/- 0.02883      (3.12%)
ca4             = 0.431248         +/- 0.02149      (4.984%)
cb3             = 9.0893           +/- 0.4132       (4.546%)
cb4             = 2.32934          +/- 0.1179       (5.063%)
cc              = 0.0749696        +/- 0.0031       (4.135%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.989  1.000 
ca2             0.685 -0.597  1.000 
cb2            -0.968  0.927 -0.844  1.000 
ca3            -0.948  0.904 -0.787  0.972  1.000 
ca4            -0.709  0.645 -0.958  0.839  0.723  1.000 
cb3            -0.818  0.755 -0.969  0.927  0.849  0.979  1.000 
cb4            -0.641  0.579 -0.920  0.773  0.633  0.988  0.942  1.000 
cc             -0.567  0.509 -0.861  0.697  0.538  0.949  0.884  0.986  1.000 


*******************************************************************************
Fri Feb  7 22:59:46 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 2.2875030223e+01   0.00e+00  5.58e-01    2.500000e+00   1.500000e+01   5.000000e-01   1.000000e+01   2.000000e-02   1.000000e-02   5.000000e+00   1.000000e+00   5.000000e-01
 486 5.9340243666e-04  -1.56e+02  5.58e-02    9.678692e-01   3.193943e+01   1.205495e+00   8.191322e+00   2.243064e-01   7.865623e-02   1.100023e+00   1.439602e+00   2.867034e-02

The fit was stopped by the user after 486 iterations.
final sum of squares of residuals : 0.000593402
rel. change during last iteration : -0.00155858

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.00400474
variance of residuals (reduced chisquare) = WSSR/ndf   : 1.60379e-05

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.967869         +/- 0.2157       (22.29%)
cb1             = 31.9394          +/- 2.798        (8.759%)
ca2             = 1.2055           +/- 4.618        (383.1%)
cb2             = 8.19132          +/- 13.48        (164.6%)
ca3             = 0.224306         +/- 1.033e+04    (4.605e+06%)
ca4             = 0.0786562        +/- 1.036e+04    (1.317e+07%)
cb3             = 1.10002          +/- 7991         (7.264e+05%)
cb4             = 1.4396           +/- 2.274e+04    (1.579e+06%)
cc              = 0.0286703        +/- 37.68        (1.314e+05%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.988  1.000 
ca2             0.916 -0.858  1.000 
cb2            -0.953  0.904 -0.994  1.000 
ca3            -0.867  0.803 -0.992  0.974  1.000 
ca4             0.867 -0.803  0.992 -0.974 -1.000  1.000 
cb3            -0.864  0.800 -0.991  0.972  1.000 -1.000  1.000 
cb4            -0.869  0.806 -0.992  0.975  1.000 -1.000  1.000  1.000 
cc             -0.848  0.782 -0.985  0.963  0.999 -0.999  0.999  0.999  1.000 


*******************************************************************************
Fri Feb  7 23:03:48 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 2.2875030223e+01   0.00e+00  5.58e-01    2.500000e+00   1.500000e+01   5.000000e-01   1.000000e+01   2.000000e-02   1.000000e-02   5.000000e+00   1.000000e+00   5.000000e-01
 698 2.8200617818e-05  -3.36e+02  5.58e-04    5.159881e-01   4.371603e+01   1.199154e+00   1.452226e+01   5.517795e-01   1.605384e-01   4.133207e+00   1.729981e+00   8.094743e-02

The fit was stopped by the user after 698 iterations.
final sum of squares of residuals : 2.82006e-05
rel. change during last iteration : -0.00336008

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.000873029
variance of residuals (reduced chisquare) = WSSR/ndf   : 7.62179e-07

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.515988         +/- 0.04923      (9.542%)
cb1             = 43.716           +/- 1.56         (3.569%)
ca2             = 1.19915          +/- 0.2029       (16.92%)
cb2             = 14.5223          +/- 1.751        (12.06%)
ca3             = 0.551779         +/- 1.846        (334.6%)
ca4             = 0.160538         +/- 1.956        (1218%)
cb3             = 4.13321          +/- 7.697        (186.2%)
cb4             = 1.72998          +/- 13.36        (772.1%)
cc              = 0.0809474        +/- 0.1313       (162.2%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.986  1.000 
ca2             0.860 -0.784  1.000 
cb2            -0.958  0.907 -0.969  1.000 
ca3             0.802 -0.728  0.982 -0.927  1.000 
ca4            -0.820  0.747 -0.988  0.939 -0.999  1.000 
cb3            -0.842  0.771 -0.994  0.954 -0.996  0.999  1.000 
cb4            -0.801  0.728 -0.980  0.925 -1.000  0.999  0.995  1.000 
cc             -0.769  0.696 -0.963  0.899 -0.996  0.993  0.985  0.997  1.000 


*******************************************************************************
Fri Feb  7 23:04:06 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.00000 : 1.00000]
        #datapoints = 46
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 2.2875030223e+01   0.00e+00  5.58e-01    2.500000e+00   1.500000e+01   5.000000e-01   1.000000e+01   2.000000e-02   1.000000e-02   5.000000e+00   1.000000e+00   5.000000e-01
1109 3.0892934571e-06  -2.62e-03  5.58e-09    2.110645e-01   5.993753e+01   8.678794e-01   2.413561e+01   9.239991e-01   4.312476e-01   9.089299e+00   2.329342e+00   7.496960e-02

After 1109 iterations the fit converged.
final sum of squares of residuals : 3.08929e-06
rel. change during last iteration : -2.6205e-08

degrees of freedom    (FIT_NDF)                        : 37
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.000288954
variance of residuals (reduced chisquare) = WSSR/ndf   : 8.34944e-08

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 0.211064         +/- 0.02417      (11.45%)
cb1             = 59.9375          +/- 2.281        (3.805%)
ca2             = 0.867879         +/- 0.02937      (3.384%)
cb2             = 24.1356          +/- 1.029        (4.262%)
ca3             = 0.923999         +/- 0.02883      (3.12%)
ca4             = 0.431248         +/- 0.02149      (4.984%)
cb3             = 9.0893           +/- 0.4132       (4.546%)
cb4             = 2.32934          +/- 0.1179       (5.063%)
cc              = 0.0749696        +/- 0.0031       (4.135%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1            -0.989  1.000 
ca2             0.685 -0.597  1.000 
cb2            -0.968  0.927 -0.844  1.000 
ca3            -0.948  0.904 -0.787  0.972  1.000 
ca4            -0.709  0.645 -0.958  0.839  0.723  1.000 
cb3            -0.818  0.755 -0.969  0.927  0.849  0.979  1.000 
cb4            -0.641  0.579 -0.920  0.773  0.633  0.988  0.942  1.000 
cc             -0.567  0.509 -0.861  0.697  0.538  0.949  0.884  0.986  1.000 
