#! /usr/bin/python

import sys
import re
import os
import argparse
import traceback

def read_asm(filename, target_asm):
    ary = []
    with open(filename) as f:
        for line in f:
            line = line.strip()
            tmp = line.split()
            if len(tmp) > 1:
                inst = re.sub('\.', '', tmp[0])
                if target_asm in inst:
                    #print(inst)
                    ary.append(line)
    return ary

def read_ll(out, filename, name, lines):
    out.write('; RUN: llc < %s -mtriple=ve-unknown-unknown | FileCheck %s\n')
    with open(filename) as f:
        for line in f:
            line = line.rstrip()
            out.write(line + "\n")
            if re.search(r'def.*{}'.format(name), line):
                #print('; CHECK-LABEL: {}'.format(name))
                #print('; CHECK: {}'.format(LABEL))
                for l in lines:
                    out.write('; CHECK: {}\n'.format(l))
                    #print('; CHECK: {}'.format(l))

def gen(ll_filename, args):
    base, ext = os.path.splitext(ll_filename)
    asm_filename = base + ".s"
    basename = os.path.basename(base)
    asm = re.sub(r'_.*', '', basename)

    tbl = {'vbrdd': 'vbrd',
           'vbrdl': 'vbrd',
           'vbrds': 'vbrdu',
           'vbrdw': 'vbrdl',
           }

    if asm in tbl:
        asm = tbl[asm]

    lines = read_asm(asm_filename, asm)
    if len(lines) == 0:
        raise Exception("{} not found".format(asm))
#    if len(lines) > 1:
#        raise Exception("multiple {} found".format(asm))

    if args.verbose > 0:
        print(lines)

    test_filename = "{}/gen-velintrin-{}.ll".format(args.destdir, basename)
    print("{} -> {}".format(ll_filename, test_filename))
    #print(test_filename)

    with open(test_filename, "w") as f:
        read_ll(f, ll_filename, basename, lines)

def main():
    dest = "llvm-test"
    parser = argparse.ArgumentParser()
    parser.add_argument('-v', '--verbose', action="count", default=0)
    parser.add_argument('-d', '--destdir', default="llvm-test")
    parser.add_argument('files', nargs="*")
    args = parser.parse_args()
    #print(args.files)
    errors = []
    for f in args.files:
        try:
            gen(f, args)
        except:
            if args.verbose > 0:
                raise
            errors.append(f)

    for f in errors:
        print("Error: {}".format(f))

if __name__ == "__main__":
    main()


