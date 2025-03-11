# edSFAC
Scripts for the generation of SHELXL SFAC commands from electron scattering factors.

## Description of subdirectories
- `data/`
Data in data/ for X-ray scattering factors computed by A. Volkov (DOI
10.1107/S2053273322010944 for neutral atoms and DOI 10.1107/S205327332300116X
ionic scattering factors). Data in this repository are sampled finer (0.01 /A)
than in these publications and lead to a more stable fitting. 
Data in XRSF_DATA.zip need to be extracted. Additional data available for N- and
C- in data/ANIONS_FROM_PAPER_2/


- `atomsMB_AVolkov`
Directory for fitting data in data/NEUTRAL_ATOMS_FROM_PAPER_1 against the
Mott-Bethe formula to generate scattering factors in Cromer-Mann
parametrisation. This parametrisation is suitable for refinement with SHELXL.
The range of fit can be adjusted by changing dmin and dmax in common.plot. It
appears that the quality of fitting for neutral atoms is largely independent of
the resolution range. This directory contains a Makefile, the file common.plot
and row01.plot - row07.plot, one for each row of the PSE. GNUPLOT plot-scripts
are generated with the script make_scripts_atomsMB_AVolkov.py

- `ionsMBZ_AVolkov`
Directory for fitting data in data/NEUTRAL_ATOMS_FROM_PAPER_1 against the
Mott-Bethe Formula for ionic scattering factors, published by Yonekura et al
(2018), DOI 10.1107/S2052252518005237 Eq. 4 This equation expresses ionicity via
Delta Z instead of f_X(s). For iSFAC modelling, this difference is an essential
modification of the Mott-Bethe formula. It ensures stable refinement and
meaningful results: $f_e(s) = \frac{1}{8\pi^2 a_0} \frac{Z_0 + \Delta Z
-f_\text{X}(s)}{s^2}$.

- `atoms`
Some gnuplot scripts for plotting against the computed electron scattering
factors available in the Int. Tables Crystallogr, Volume C. We consider these
scripts obsolete, because fitting against X-ray scattering factors based on the
Mott-Bethe is more convient, since data for all elements are available. Only
01H.plot is relevant, since data/ does not contain H. Data from Int. Tables must
be provided by the users, since these are not open access.

- `atomsMB`
Some gnuplot scripts for plotting against the computed X-ray scattering factors
available in the Int. Tables Crystallogr, Volume C. We consider these scripts
obsolete, because of the finer sampling of the data provided by A.  Volkov. Only
01H.plot is relevant, since data/ does not contain H. Data from Int. Tables must
be provided by the users, since these are not open access.

- `make_scripts_atomsMB_AVolkov.py`
Python script to generate GNUPLOT plot files in atomsMB_AVolkov
