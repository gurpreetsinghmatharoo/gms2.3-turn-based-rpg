/// @description 
// Draw image in box function
/// @func DrawImage
/// @arg  image
DrawImage = function (image) {
	// Static data
	// This is like a Create event for this function
	static frame = 0;
	static imageSpeed = sprite_get_speed(image);
	static width = sprite_get_width(image);
	static height = sprite_get_height(image);
	
	static scaleX = sprite_width / width;
	static scaleY = sprite_height / height;
	
	// Draw
	draw_sprite_ext(image, frame,
		(x + sprite_width / 2), (y + sprite_height / 2),
		scaleX, scaleY, 0, -1, 1);
	
	// Frames
	frame += (1 / 60) * imageSpeed;
}