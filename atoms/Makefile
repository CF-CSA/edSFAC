PLOT= 01H.plot \
    02He.plot \
    03Li.plot \
    04Be.plot \
    05B.plot \
    06C.plot \
    07N.plot \
    08O.plot \
    09F.plot \
    10Ne.plot \
    11Na.plot \
    12Mg.plot \
    13Al.plot \
    14Si.plot \
    15P.plot \
    16S.plot \
    17Cl.plot \
    18Ar.plot \
    19K.plot \
    20Ca.plot \
    21Sc.plot \
    22Ti.plot \
    23V.plot \
    25Mn.plot \
    26Fe.plot \
    27Co.plot \
    28Ni.plot \
    29Cu.plot \
    30Zn.plot \
    31Ga.plot \
    34Se.plot \
    44Ru.plot \
    46Pd.plot \
    53I.plot \
    76Os.plot \
    79Au.plot \
    80Hg.plot

PDF= pdfs/01H.pdf \
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
    pdfs/25Mn.pdf \
    pdfs/26Fe.pdf \
    pdfs/27Co.pdf \
    pdfs/28Ni.pdf \
    pdfs/29Cu.pdf \
    pdfs/30Zn.pdf \
    pdfs/31Ga.pdf \
    pdfs/34Se.pdf \
    pdfs/44Ru.pdf \
    pdfs/46Pd.pdf \
    pdfs/53I.pdf \
    pdfs/76Os.pdf \
    pdfs/79Au.pdf \
    pdfs/80Hg.pdf

all: common.plot ${PDF}

pdfs/%.pdf: %.plot
	gnuplot $<

	
.PHONY: clean

clean:
	rm -f sfac-electron.dfx ${PDF} logs/*
