
// Resolution data
global.Resolution = {
	width : 320,
	height : 180,
	scale : 4
}

// Get total size
var _totalW = global.Resolution.width * global.Resolution.scale;
var _totalH = global.Resolution.height * global.Resolution.scale;

// Set resolution
surface_resize(application_surface, _totalW, _totalH);

// Set window size
window_set_size(_totalW, _totalH);