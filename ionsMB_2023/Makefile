PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, \
	03Li1+.pdf \
	04Be2+.pdf \
	05B1+.pdf \
	05B2+.pdf \
	05B3+.pdf \
	06C1+.pdf \
	06C2+.pdf \
	06C3+.pdf \
	06C4+.pdf \
	06C.pdf \
	07N1+.pdf \
	07N2+.pdf \
	07N3+.pdf \
	07N4+.pdf \
	07N5+.pdf \
	08O1+.pdf \
	08O1-.pdf \
	08O2+.pdf \
	09F1-.pdf \
	14Si2+.pdf \
	14Si4+.pdf \
	14Si.pdf \
	16S6+.pdf \
)

all: common_2023.plot sfac-electron.dfx

sfac-electron.dfx: $(PDFS)

$(PDFDIR)/%.pdf: %.plot common_2023.plot
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx









