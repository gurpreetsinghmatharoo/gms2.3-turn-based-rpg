/// @description 
surf = -1;

objs = [];

SetObjects = function (objs) {
	self.objs = objs;
}

DrawSurface = function (x, y) {
	draw_surface(surf, x, y);
}