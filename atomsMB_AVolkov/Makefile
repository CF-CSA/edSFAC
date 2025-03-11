SHELL := /usr/bin/bash
PDFDIR= pdfs
LOGDIR= logs

PDFS:= $(addprefix $(PDFDIR)/, \
	02He.pdf \
	03Li.pdf \
	04Be.pdf \
	05B.pdf \
	06C.pdf \
	07N.pdf \
	08O.pdf \
	09F.pdf \
	10Ne.pdf \
	11Na.pdf \
	12Mg.pdf \
	13Al.pdf \
	14Si.pdf \
	15P.pdf \
	16S.pdf \
	17Cl.pdf \
	18Ar.pdf \
	19K.pdf \
	20Ca.pdf \
	21Sc.pdf \
	22Ti.pdf \
	23V.pdf \
	24Cr.pdf \
	25Mn.pdf \
	26Fe.pdf \
	27Co.pdf \
	28Ni.pdf \
	29Cu.pdf \
	30Zn.pdf \
	31Ga.pdf \
	32Ge.pdf \
	33As.pdf \
	34Se.pdf \
	35Br.pdf \
	36Kr.pdf \
	37Rb.pdf \
	38Sr.pdf \
	39Y.pdf \
	40Zr.pdf \
	41Nb.pdf \
	42Mo.pdf \
	43Tc.pdf \
	44Ru.pdf \
	45Rh.pdf \
	46Pd.pdf \
	47Ag.pdf \
	48Cd.pdf \
	49In.pdf \
	50Sn.pdf \
	51Sb.pdf \
	52Te.pdf \
	53I.pdf \
	54Xe.pdf \
	55Cs.pdf \
	56Ba.pdf \
	57La.pdf \
	58Ce.pdf \
	59Pr.pdf \
	60Nd.pdf \
	61Pm.pdf \
	62Sm.pdf \
	63Eu.pdf \
	64Gd.pdf \
	65Tb.pdf \
	66Dy.pdf \
	67Ho.pdf \
	68Er.pdf \
	69Tm.pdf \
	70Yb.pdf \
	71Lu.pdf \
	72Hf.pdf \
	73Ta.pdf \
	74W.pdf \
	75Re.pdf \
	76Os.pdf \
	77Ir.pdf \
	78Pt.pdf \
	79Au.pdf \
	80Hg.pdf \
	81Tl.pdf \
	82Pb.pdf \
	83Bi.pdf \
	84Po.pdf \
	85At.pdf \
	86Rn.pdf \
	87Fr.pdf \
	88Ra.pdf \
	89Ac.pdf \
	90Th.pdf \
	91Pa.pdf \
	92U.pdf \
)


all: common.plot sfac-electron.dfx 

sfac-electron.dfx: $(PDFS)

%.plot: 
	for i in $$(seq 2 92); do \
		../make_scripts_atomsMB_AVolkov.py -n $$i; \
	done


$(PDFDIR)/%.pdf: %.plot common.plot 
	gnuplot $<

.PHONY: clean

clean:
	rm -fr $(PDFDIR)/*.pdf $(LOGDIR)/*.log sfac-electron.dfx Rscat_values.log
