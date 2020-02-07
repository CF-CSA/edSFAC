load 'common.plot'


set output "pdfs/AlSi.pdf"
plot [0:1.0] \
	datafile ind 1 usi 1:3 ti "Al", \
	datafile ind 1 usi 1:4 ti "Si"

