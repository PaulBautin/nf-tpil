#!/usr/bin/env bash

# main.nf to test nf-tpil
my_main_nf='/home/pabaua/dev_tpil/nf-tpil/tests/main.nf'
# Results folder of tractoflow
my_input_tr='/home/pabaua/dev_tpil/results/results_tracto/23-09-01_tractoflow_bundling'

nextflow run $my_main_nf \
    --input_tr $my_input_tr \
    -work-dir ../results \
    --outdir ../results/results \
    -resume