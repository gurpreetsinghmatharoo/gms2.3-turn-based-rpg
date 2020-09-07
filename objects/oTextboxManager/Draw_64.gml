/// @description 
// Draw textbox
if (textboxEnabled && layer_sequence_exists(seqLayer, seqElm) && instance_exists(oGUIBoxParent)) {
	// Draw Sequence surface
	if (surface_exists(global.seqSurf)) draw_surface(global.seqSurf, 0, 0);
	
	// Message data
	var _data = messageData[messageAt];
	
	var _name = _data.speaker.name;
	var _image = _data.speaker.image;
	var _message = _data.message;
	
	// Draw name
	draw_set_font(ftDialogueName);
	
	draw_set_halign(fa_center);
	draw_text(oNameBox.x + oNameBox.sprite_width / 2, oNameBox.y, _name);
	draw_set_halign(fa_left);
	
	// Draw image
	if (sprite_exists(_image)) {
		oImageBox.DrawImage(_image);
	}
	
	// Draw message
	var _str = string_copy(_message, 1, charAt);
	
	draw_set_font(ftDialogueMessage);
	
	draw_text_ext(oMessageBox.x, oMessageBox.y, _str, -1, oMessageBox.sprite_width);
}