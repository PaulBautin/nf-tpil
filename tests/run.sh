#!/usr/bin/env bash
my_main_nf='/home/pabaua/dev_tpil/nf-tpil/tests/main.nf'

nextflow run $my_main_nf -work-dir ../results --outdir ../results -resume