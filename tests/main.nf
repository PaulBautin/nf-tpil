#!/usr/bin/env nextflow
nextflow.enable.dsl=2

include { SEGMENTATION_FSLFIRST } from '../modules/nf-core/segmentation/fslfirst/main'

workflow {
	input_tractoflow = file('/home/pabaua/dev_tpil/results/results_tracto/23-09-01_tractoflow_bundling')
	
	t1_nativepro_brain = Channel.fromPath("$input_tractoflow/*/Crop_T1/*__t1_bet_cropped.nii.gz").map{[[ id:it.parent.parent.name, single_end:false ], it]}
	t1_nativepro_brain.view()
	
	SEGMENTATION_FSLFIRST(t1_nativepro_brain)
}
