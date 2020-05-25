
// Resolution data
global.Resolution = {
	width : 640,
	height : 360,
	scale : 2
}

// Set resolution
surface_resize(application_surface, global.Resolution.width, global.Resolution.height);

// Set window size
window_set_size(
	global.Resolution.width * global.Resolution.scale,
	global.Resolution.height * global.Resolution.scale
);