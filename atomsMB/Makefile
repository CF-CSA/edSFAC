PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, \
	01H.pdf \
	02He.pdf \
	03Li.pdf \
	04Be.pdf \
	05B.pdf \
	06C.pdf \
	07N.pdf \
	08O.pdf \
	09F.pdf \
	13Al.pdf \
	14Si.pdf \
	17Cl.pdf \
	31Ga.pdf \
	46Pd.pdf \
	)


all: common.plot sfac-electron.dfx

sfac-electron.dfx: $(PDFS)

$(PDFDIR)/%.pdf: %.plot common.plot
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx Rscat_values.log

