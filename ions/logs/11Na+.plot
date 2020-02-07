

*******************************************************************************
Fri Feb  7 23:06:40 2020


FIT:    data read from datafile ind idx usi 1:(column(col)>-999?column(col):1/0)
        format = x:z
        x range restricted to [0.0100000 : 0.833333]
        #datapoints = 43
        residuals are weighted equally (unit weight)

function used for fitting: cm(x)
	cm(x) = ca1*exp(-cb1*x**2)         +ca2*exp(-cb2*x**2)         +ca3*exp(-cb3*x**2)         +ca4*exp(-cb4*x**2)         + cc
fitted parameters initialized with current variable values

iter      chisq       delta/lim  lambda   ca1           cb1           ca2           cb2           ca3           ca4           cb3           cb4           cc           
   0 3.7077866737e+04   0.00e+00  2.79e+00    4.000000e+01   1.200000e+03   1.000000e+01   5.000000e+02   3.000000e+00   1.000000e+00   1.000000e+02   1.000000e+01   5.000000e-01

Current data point
=========================
#               = 43 out of 43
x               = 219.478        
z               = 0.325          

Current set of parameters
=========================
ca1             = 219.478        
cb1             = 9182.45        
ca2             = 41.8138        
cb2             = -1372.64       
ca3             = 5.81099        
ca4             = 1.1846         
cb3             = 165.855        
cb4             = 9.61248        
cc              = 0.545853       

BREAK: Undefined value during function evaluation

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
   0 3.7077638064e+04   0.00e+00  3.58e+00    4.000000e+01   1.200000e+03   1.000000e+01   5.000000e+02   3.000000e+00   1.000000e+00   1.000000e+02   1.000000e+01   5.000000e-01
  13 3.5101293871e-02  -3.96e-01  3.58e-09    3.960838e+02   8.284888e+03   5.830984e+01   1.671563e+03   1.431167e+01   3.246592e+00   3.655944e+02   5.222611e+01   1.134114e+00

After 13 iterations the fit converged.
final sum of squares of residuals : 0.0351013
rel. change during last iteration : -3.95806e-06

degrees of freedom    (FIT_NDF)                        : 17
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 0.0454399
variance of residuals (reduced chisquare) = WSSR/ndf   : 0.00206478

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
ca1             = 396.084          +/- 0.8774       (0.2215%)
cb1             = 8284.89          +/- 107          (1.291%)
ca2             = 58.3098          +/- 1.529        (2.623%)
cb2             = 1671.56          +/- 60.38        (3.612%)
ca3             = 14.3117          +/- 0.7222       (5.046%)
ca4             = 3.24659          +/- 0.1849       (5.695%)
cb3             = 365.594          +/- 19.24        (5.262%)
cb4             = 52.2261          +/- 3.689        (7.064%)
cc              = 1.13411          +/- 0.03272      (2.885%)

correlation matrix of the fit parameters:
                ca1    cb1    ca2    cb2    ca3    ca4    cb3    cb4    cc     
ca1             1.000 
cb1             0.734  1.000 
ca2             0.709  0.964  1.000 
cb2             0.452  0.921  0.840  1.000 
ca3             0.268  0.769  0.629  0.940  1.000 
ca4             0.084  0.389  0.213  0.553  0.573  1.000 
cb3             0.172  0.614  0.425  0.811  0.880  0.879  1.000 
cb4             0.061  0.299  0.153  0.432  0.416  0.898  0.741  1.000 
cc              0.033  0.170  0.081  0.248  0.217  0.542  0.457  0.821  1.000 
