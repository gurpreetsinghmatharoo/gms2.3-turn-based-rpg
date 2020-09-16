/// @description 
if (isHovered) {
	draw_set_alpha(0.2);
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, 0);
	draw_set_alpha(1);
}