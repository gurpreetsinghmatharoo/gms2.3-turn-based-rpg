
// Resolution data
global.Resolution = {
	width : 320,
	height : 180,
	scale : 4
}

// Set resolution
surface_resize(application_surface, global.Resolution.width, global.Resolution.height);

// Set window size
window_set_size(
	global.Resolution.width * global.Resolution.scale,
	global.Resolution.height * global.Resolution.scale
);