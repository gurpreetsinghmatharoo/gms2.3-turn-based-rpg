/// @description 
// Reset selected
isSelected = false;

// Get if selected
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

if (position_meeting(_mouseX, _mouseY, id) && mouse_check_button_pressed(mb_left)) {
	isSelected = true;
	log("selected object: ", object_get_name(object_index));
}