/// @description 
if (global.paused && layer_sequence_exists(global.seqLayer, pauseSeqElm)) {
	if (surface_exists(global.seqSurf)) {
		gpu_set_blendenable(false);
		draw_surface(global.seqSurf, 0, 0);
		gpu_set_blendenable(true);
	}
}