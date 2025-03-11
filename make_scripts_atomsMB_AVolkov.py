#!/usr/bin/env python3
import ase
import argparse

def isfac_data(pse_name):
    Z0 = ase.data.atomic_numbers[pse_name]
    name = ase.data.atomic_names[Z0]
    covrad = ase.data.covalent_radii[Z0]
    m = ase.data.atomic_masses[Z0]
    period =1
    if Z0>2:
    	period = 2
    if Z0>10:
        period = 3
    if Z0>18:
        period = 4
    if Z0>36:
        period = 5
    if Z0>54:
        period = 6
    if Z0>86:
        period = 7
    print (f'Z0 = {Z0}')
    print (f'name = "{pse_name}"     # {name}')
    print (f'r  = {covrad:5.2f}      # from python ASE')
    print (f'wt = {m:5.3f}      # from python ASE')
    print (f'\nload "row0{period}.plot"')

    with open (f'{Z0:02}{pse_name}.plot', 'w') as out:
        out.write(f'Z0 = {Z0}\n')
        out.write(f'name = "{pse_name}"     # {name}\n')
        out.write(f'r  = {covrad:5.2f}      # from python ASE\n')
        out.write(f'wt = {m:5.3f}      # from python ASE\n\n')
        out.write(f'\nload "row0{period}.plot"\n')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="basic info for SFAC")
    parser.add_argument("-e", "--pse_name", help="Atom name as abbreviated in PSE")
    parser.add_argument("-n", "--pse_num", help="Atom number", type=int)

    args = parser.parse_args()
    if args.pse_name is None and args.pse_num is None:
        print(parser.usage)
        exit()
    if args.pse_name is None:
    	pse_num = args.pse_num
    	pse_name = ase.data.chemical_symbols[pse_num]
    else:
    	pse_name = args.pse_name
    isfac_data(pse_name)

