#!/usr/bin/env python3
import ase
import argparse


def gpltfile(E, Z0, q, period, datafile):
    plotfilename = f"{Z0:02}{E}{q:+d}.plot"
    covrad = ase.data.covalent_radii[Z0]
    m = ase.data.atomic_masses[Z0]
    with open(plotfilename, "w") as out:
        out.write("# file created with python ase\n")
        out.write(f'datafile = "../data/NEUTRAL_ATOMS_FROM_PAPER_1/{E}.out"\n')
        out.write(f'element = "{E}"\n')
        out.write(f"Z0 = {Z0}\n")
        out.write(f"charge = {q}\n")
        out.write(f'name= "{E}"\n')
        out.write(f'outname= "{Z0:02d}{E}{q:+d}"')
        out.write(f"\n#parameters for SFAC card\n")
        out.write(f"r  = {covrad:5.2f}      # from python ASE\n")
        out.write(f"wt = {m:5.3f}      # from python ASE\n\n")
        if q < 0:
            out.write(f'\nload "row0{period}_anion.plot"\n')
        else:
            out.write(f'\nload "row0{period}_cation.plot"\n')


""" assume a filename like Bi_5_plus.out (2 underscores, .out)
    and convert into pse name, charge
"""


def pseinfo(filename):
    el, sfix = filename.split(".")
    Z0 = ase.data.atomic_numbers[el]
    period = 1
    if Z0 > 2:
        period = 2
    if Z0 > 10:
        period = 3
    if Z0 > 18:
        period = 4
    if Z0 > 36:
        period = 5
    if Z0 > 54:
        period = 6
    if Z0 > 86:
        period = 7

    print(f"pseinfo element = {el}, Z0 = {Z0}, period = {period}")
    return el, Z0, period


def splitpath(filename):
    relpath, dirname, subdir, fname = filename.split("/")
    print(f"filename: {fname}")
    return relpath, dirname, subdir, fname


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Create gnuplot script from filename")
    parser.add_argument(
        "-f",
        "--filename",
        help="Filename with scattering factors",
        default="../AVolkov/ANIONS_FROM_PAPER_2/Cl_1_minus.out",
    )
    parser.add_argument(
        "-q",
        "--charge",
        help="Numerical charge (integer including sign)",
        default=-1,
    )
    args = parser.parse_args()
    print(f"filename: {args.filename}")
    relpath, dirname, subdir, fname = splitpath(args.filename)
    E, Z0, period = pseinfo(fname)
    charge = int(args.charge)
    gpltfile(E, Z0, charge, period, args.filename)
