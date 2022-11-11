rule v2_dl3_pointlike: 
	input: 
		anasum_file="data/input/{runnumber}.anasum.root",
		effarea_file="data/input/effectiveArea.root"
	output: 
		"data/output/{runnumber}.fits.gz"
	log:
		"data/logs/{runnumber}.v2ld3_pointlike.log"
	shell:
		'''
		apptainer exec docker://ghcr.io/veritas-observatory/v2dl3:pr-171-v2dl3-eventdisplay \
			python /V2DL3/pyV2DL3/script/v2dl3_for_Eventdisplay.py \
			-f {input.anasum_file} {input.effarea_file} \
			{output}
		'''
