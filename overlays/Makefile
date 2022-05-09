PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, 98overlay_OO-_CuI-II.pdf \
			       99overlay_OO-_SiAl.pdf \
			       )


all: ${PDFS}

sfac-electron.dfx: $(PDFS)

$(PDFDIR)/%.pdf: %.plot 
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx
