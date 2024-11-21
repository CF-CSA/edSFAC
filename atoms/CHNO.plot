Cca1             = 0.15058          
Ccb1             = 66.4998          
Cca2             = 0.765999         
Ccb2             = 27.5561          
Cca3             = 1.00535          
Cca4             = 0.509093         
Ccb3             = 10.5706          
Ccb4             = 2.65049          
Ccc              = 0.0783973        

Hca1             = 0.128339         
Hcb1             = 37.6621          
Hca2             = 0.236504         
Hcb2             = 13.635           
Hca3             = 0.135275         
Hca4             = 0.0104076        
Hcb3             = 3.58588          
Hcb4             = 1.03522          
Hcc              = 0.0179595        

Nca1             = 0.144743         
Ncb1             = 46.2063          
Nca2             = 0.528904         
Ncb2             = 21.7868          
Nca3             = 0.93428          
Nca4             = 0.53742          
Ncb3             = 8.88784          
Ncb4             = 2.14547          
Ncc              = 0.0661428        

Oca1             = 0.0325527        
Ocb1             = 53.7102          
Oca2             = 0.320237         
Ocb2             = 23.9904          
Oca3             = 0.787945         
Oca4             = 0.718042         
Ocb3             = 9.89732          
Ocb4             = 2.87327          
Occ              = 0.125045         

# C H N O
array ca1[4] = [ Cca1, Hca1, Nca1, Oca1 ];
array ca2[4] = [ Cca2, Hca2, Nca2, Oca2 ];
array ca3[4] = [ Cca3, Hca3, Nca3, Oca3 ];
array ca4[4] = [ Cca4, Hca4, Nca4, Oca4 ];

array cb1[4] = [ Ccb1, Hcb1, Ncb1, Ocb1 ];
array cb2[4] = [ Ccb2, Hcb2, Ncb2, Ocb2 ];
array cb3[4] = [ Ccb3, Hcb3, Ncb3, Ocb3 ];
array cb4[4] = [ Ccb4, Hcb4, Ncb4, Ocb4 ];

array cc[4] = [ Ccc, Hcc, Ncc, Occ ];

cm(x) = ca1[i]*exp(-cb1[i]*x**2) \
        +ca2[i]*exp(-cb2[i]*x**2) \
        +ca3[i]*exp(-cb3[i]*x**2) \
        +ca4[i]*exp(-cb4[i]*x**2) \
        + cc[i]

array names[4] = [ "C", "H", "N", "O"];

set terminal pdfcairo enh color solid font "Helvetica,10"

set encoding iso_8859_15
set output "CHNO.pdf"

dmax = 15.0 # in Angstrom
dmin = 0.64 # in Angstrom
xmin=0.5/dmax 
xmax=0.5/dmin
set xrange [0:xmax]
plot for [i=1:4] cm(x) ti sprintf ("%s", names[i]);

