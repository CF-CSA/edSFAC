ca1             = -40
ca2             = -5
ca3             = 10
ca4             = 1
cb1             = 100
cb2             = 10
cb3             = 1
cb4             = 5
cc              = 0.5

# additional parameters for SFAC line
fp = 0.00
fpp=  0.00
mu = 0.00
r  = 1.26 # https://en.wikipedia.org/wiki/Ionic_radius. O2-
wt = 15.999 # https://en.wikipedia.org/wiki/Sodium


idx = 0
col = 5
Z = "08"
name = "O-"

load 'sfac_common.plot'



set output "O80_mb.pdf"
datafile= "../../sf_Z01-Z10.txt"
Z = 7
col = 9

plot [xmin:xmax] datafile usi 1:(0.023934*(Z-column(col))/column(1)**2) ti name."pre fit", \
	cm(x) ti "Cromer-Mann fit"
fit [xmin:xmax] cm(x) datafile usi 1:(0.023934*(Z-column(col))/column(1)**2) via ca1, ca2, ca3, ca4, cb1, cb2, cb3, cb4, cc
plot [xmin:xmax] datafile usi 1:(0.023934*(Z-column(col))/column(1)**2) ti name."pre fit", \
	cm(x) ti "Cromer-Mann fit"

plot [xmin:xmax] datafile usi 1:((0.023934*(Z-column(col))/column(1)**2)-cm(x)) noti w lp
