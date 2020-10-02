/// @description 

// Parent event
event_inherited();

// Draw rectangle
draw_rectangle(x, y, x + sprite_width, y + sprite_height, 1);

// Draw action
draw_set_font(ftBattle);

align_center();
draw_text(x + sprite_width / 2, y + sprite_height / 2, "Items");
align_default();