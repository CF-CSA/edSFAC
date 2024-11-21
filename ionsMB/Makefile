PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, \
			       01H+.pdf \
			       06C-.pdf \
			       06C+.pdf \
                               07N-.pdf \
			       08O2-.pdf \
			       08O-.pdf \
			       09F-.pdf \
			       11Na+.pdf \
			       11Na-.pdf \
			       13Al3-.pdf \
			       13Al3+.pdf \
			       14Si4-.pdf \
			       14Si4+.pdf \
			       16S-.pdf \
			       17Cl-.pdf \
			       19K+.pdf \
			       20Ca2+.pdf \
			       26Fe-.pdf \
			       26Fe2+.pdf \
			       26Fe3+.pdf \
			       29Cu1+.pdf \
			       29Cu2+.pdf \
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

