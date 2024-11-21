PDF= \
    pdfs/01H.pdf \
    pdfs/02He.pdf \
    pdfs/03Li.pdf \
    pdfs/04Be.pdf \
    pdfs/05B.pdf \
    pdfs/06C.pdf \
    pdfs/07N.pdf \
    pdfs/08O.pdf \
    pdfs/09F.pdf \
    pdfs/10Ne.pdf \
    pdfs/11Na.pdf \
    pdfs/12Mg.pdf \
    pdfs/13Al.pdf \
    pdfs/14Si.pdf \
    pdfs/15P.pdf \
    pdfs/16S.pdf \
    pdfs/17Cl.pdf \
    pdfs/18Ar.pdf \
    pdfs/19K.pdf \
    pdfs/20Ca.pdf \
    pdfs/21Sc.pdf \
    pdfs/22Ti.pdf \
    pdfs/23V.pdf \
    pdfs/24Cr.pdf \
    pdfs/25Mn.pdf \
    pdfs/26Fe.pdf \
    pdfs/27Co.pdf \
    pdfs/28Ni.pdf \
    pdfs/29Cu.pdf \
    pdfs/30Zn.pdf \
    pdfs/31Ga.pdf \
    pdfs/34Se.pdf \
    pdfs/35Br.pdf \
    pdfs/40Zr.pdf \
    pdfs/44Ru.pdf \
    pdfs/46Pd.pdf \
    pdfs/47Ag.pdf \
    pdfs/53I.pdf \
    pdfs/55Cs.pdf \
    pdfs/56Ba.pdf \
    pdfs/57La.pdf \
    pdfs/58Ce.pdf \
    pdfs/59Pr.pdf \
    pdfs/60Nd.pdf \
    pdfs/64Gd.pdf \
    pdfs/76Os.pdf \
    pdfs/79Au.pdf \
    pdfs/80Hg.pdf \
    
    

all: common.plot ${PDF}

pdfs/%.pdf: %.plot Makefile
	gnuplot $<

	
.PHONY: clean

clean:
	rm -f sfac-electron.dfx ${PDF} logs/*
