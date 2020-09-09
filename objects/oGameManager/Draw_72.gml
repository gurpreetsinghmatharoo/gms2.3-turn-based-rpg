/// @description 

// Create
if (!surface_exists(global.seqSurf)) {
	global.seqSurf = surface_create(display_get_gui_width(), display_get_gui_height());
}

// Clear
surface_set_target(global.seqSurf);
draw_clear_alpha(0, 0);
surface_reset_target();