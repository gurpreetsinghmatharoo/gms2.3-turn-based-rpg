/// @description 
log("SeqExist: ", layer_sequence_exists(seqLayer, seqElm));
log("GUIExist: ", instance_exists(oGUIParent));

// Draw textbox
if (textboxEnabled && layer_sequence_exists(seqLayer, seqElm) && instance_exists(oGUIParent)) {
	// (Temporary fix for broken Sequences GUI)
	// Draw GUI objects
	with (oGUIParent) draw_self();
	
	// Message data
	var _data = messageData[messageAt];
	
	var _name = _data.speaker.name;
	var _image = _data.speaker.image;
	var _message = _data.message;
	
	// Draw name
	draw_set_font(ftDialogueName);
	
	draw_text(oNameBox.x, oNameBox.y, _name);
	
	// Draw image
	if (sprite_exists(_image)) {
		DrawImageInBox(oImageBox, _image);
	}
	
	// Draw message
	var _str = string_copy(_message, 1, charAt);
	
	draw_set_font(ftDialogueMessage);
	
	draw_text(oMessageBox.x, oMessageBox.y, _str);
}