/// @description 
// Sequence surface
if (surface_exists(global.seqSurf)) {
	// Draw sequence surface
	gpu_set_blendenable(false);
	draw_surface(global.seqSurf, 0, 0);
	gpu_set_blendenable(true);
}