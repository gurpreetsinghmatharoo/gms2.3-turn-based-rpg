/// @description 
if (!surface_exists(surf)) {
	surf = surface_create(global.Resolution.width, global.Resolution.height);
}

surface_set_target(surf);

var _len = array_length(objs);
for (var i = 0; i < _len; i ++) {
	with (objs[i]) draw_self();
}

surface_reset_target();