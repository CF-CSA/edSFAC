PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, 06C+.pdf \
                               07N-.pdf \
			       08O-.pdf \
			       13Al3+.pdf \
			       14Si4+.pdf \
			       )


all: common.plot sfac-electron.dfx

sfac-electron.dfx: $(PDFS)

$(PDFDIR)/%.pdf: %.plot 
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx
