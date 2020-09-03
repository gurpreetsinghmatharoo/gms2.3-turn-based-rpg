
// Resolution data
global.Resolution = {
	width : 320,
	height : 180,
	scale : 4
}

var _width = global.Resolution.width * global.Resolution.scale;
var _height = global.Resolution.height * global.Resolution.scale;

// Set resolution
surface_resize(application_surface, _width, _height);

// Window
window_set_size(_width, _height);

// GUI
display_set_gui_size(_width, _height);