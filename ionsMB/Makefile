PDFDIR= pdfs
LOGDIR= logs

all: common.plot sfac-electron.dfx

$(PDFDIR)/%.pdf: %.plot 
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx
