/// @description 
// Reset selected
isSelected = false;

// Get if selected
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	isSelected = true;
}