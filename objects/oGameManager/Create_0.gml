/// @description 
// Pause
global.paused = false;
pauseSeqElm = -1;

// GUI Sequence
global.seqLayer = layer_get_id("LayerSequence");
global.seqLayer2 = layer_get_id("LayerSequence2");
global.seqSurf = -1;

layer_script_begin(global.seqLayer, sequence_layer_draw_begin);
layer_script_end(global.seqLayer, sequence_layer_draw_end);
layer_script_begin(global.seqLayer2, sequence_layer_draw_begin);
layer_script_end(global.seqLayer2, sequence_layer_draw_end);

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