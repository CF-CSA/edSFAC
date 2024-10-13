PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, \
			       01H0.pdf \
			       06C0.pdf \
                               07N0.pdf \
			       08O0.pdf \
			       09F0.pdf \
			       13Al0.pdf \
			       14Si0.pdf \
			       17Cl0.pdf \
			       31Ga0.pdf \
			       46Pd0.pdf \
			       )


all: common.plot sfac-electron.dfx

sfac-electron.dfx: $(PDFS)

$(PDFDIR)/%.pdf: %.plot common.plot
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx Rscat_values.log

