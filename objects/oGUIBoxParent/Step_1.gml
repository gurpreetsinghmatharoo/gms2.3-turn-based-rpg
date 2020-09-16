/// @description 
// Reset
isSelected = false;
isHovered = false;

// Get if selected
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _hover = position_meeting(_mouseX, _mouseY, id);
var _click = mouse_check_button_pressed(mb_left);

// Can select
if (canSelect) {
	// Hover
	if (_hover) {
		isHovered = true;
	
		// Select
		if (_click) {
			isSelected = true;
		}
	}
	
	// Reset
	canSelect = false;
}