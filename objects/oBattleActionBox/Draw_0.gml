/// @description 
if (!is_struct(action)) exit;

// Draw rectangle
draw_rectangle(x, y, x + sprite_width, y + sprite_height, 1);

// Draw action
draw_set_font(ftDialogueMessage);

align_center();
draw_text(x + sprite_width / 2, y + sprite_height / 2, action.name);
align_default();