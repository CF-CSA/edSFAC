PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, 01H+.pdf \
			       01H0.pdf \
			       06C-.pdf \
			       06C0.pdf \
			       06C+.pdf \
                               07N-.pdf \
                               07N0.pdf \
			       08O2-.pdf \
			       08O-.pdf \
			       08O0.pdf \
			       09F-.pdf \
			       09F0.pdf \
			       11Na+.pdf \
			       11Na-.pdf \
			       13Al3-.pdf \
			       13Al0.pdf \
			       13Al3+.pdf \
			       14Si4-.pdf \
			       14Si0.pdf \
			       14Si4+.pdf \
			       17Cl-.pdf \
			       17Cl0.pdf \
			       19K+.pdf \
			       20Ca2+.pdf \
			       26Fe-.pdf \
			       26Fe2+.pdf \
			       26Fe3+.pdf \
			       29Cu1+.pdf \
			       29Cu2+.pdf \
			       31Ga0.pdf \
			       46Pd0.pdf \
			       81Tl3+.pdf \
			       81Tl+.pdf \
			       )


all: common.plot sfac-electron.dfx

sfac-electron.dfx: $(PDFS)

$(PDFDIR)/%.pdf: %.plot common.plot
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx Rscat_values.log

