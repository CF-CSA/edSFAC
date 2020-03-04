PLOT=   08O0.25-.plot \
	08O-.plot \
	11Na+.plot \
	20Ca2+.plot \
	25Mn2+.plot \
	25Mn3+.plot \
	25Mn4+.plot \
	29Cu1+.plot \
	29Cu2+.plot \
	64Gd3+.plot \
	65Tb3+.plot

PDF   = \
	pdfs/08O0.25-.pdf \
	pdfs/08O-.pdf \
	pdfs/11Na+.pdf \
	pdfs/13Al3+.pdf \
	pdfs/14Si4+.pdf \
	pdfs/20Ca2+.pdf \
	pdfs/25Mn2+.pdf \
	pdfs/25Mn3+.pdf \
	pdfs/25Mn4+.pdf \
	pdfs/26Fe2+.pdf \
	pdfs/26Fe3+.pdf \
	pdfs/29Cu1+.pdf \
	pdfs/29Cu2+.pdf \
	pdfs/45Rh3+.pdf \
	pdfs/59Pr3+.pdf \
	pdfs/64Gd3+.pdf \
	pdfs/65Tb3+.pdf

all: sfac_common.plot ${PDF}

pdfs/%.pdf: %.plot
	gnuplot $<

	
.PHONY: clean

clean:
	rm -f sfac-electron.dfx ${PDF} 

