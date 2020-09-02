/// @description 
// Pause
global.paused = false;

// Get tilemap used for collisions
global.collisionTilemap = layer_tilemap_get_id("Tiles_Collision");

// MP Grid
var _width = floor(room_width / CELLSIZE);
var _height = floor(room_height / CELLSIZE);
global.AI_MPGrid = mp_grid_create(0, 0, _width, _height, CELLSIZE, CELLSIZE);

mp_grid_add_instances(global.AI_MPGrid, oCollision, false);

// Add tiles
for (var _x = 0; _x < _width; _x ++) {
	for (var _y = 0; _y < _height; _y ++) {
		var _cell = tilemap_get(global.collisionTilemap, _x, _y);
		
		if (_cell) mp_grid_add_cell(global.AI_MPGrid, _x, _y);
	}
}

// Managers
global.textboxManager = instance_create_layer(x, y, layer, oTextboxManager);