/// @description 
if (global.paused && layer_sequence_exists(global.seqLayer, pauseSeqElm)) {
	if (surface_exists(global.seqSurf)) draw_surface(global.seqSurf, 0, 0);
}