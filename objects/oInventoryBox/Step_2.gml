/// @description 
// Update dimensions
inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;

// Cells
cellSize = floor(inventoryWidth / 4);

#region Input
// Reset input
hoverSlotNum = -1;

// Get input
if (isHovered) {
	// Relative mouse position
	var _mouseX = device_mouse_x_to_gui(0) - x;
	var _mouseY = device_mouse_y_to_gui(0) - (y + headerHeight);

	// To cell coordinates
	var _cellX = floor(_mouseX / cellSize);
	var _cellY = floor(_mouseY / cellSize);
	
	// To slot number
	var _slotNum = (cellsPerRow * _cellY) + _cellX;
	
	if (_slotNum < INVENTORY_MAX_SIZE) {
		hoverSlotNum = _slotNum;
		
		// Click
		if (isSelected) {
			// Get item data
			var _slot = inventory[_slotNum];
			var _itemID = _slot.itemID;
			var _itemData = global.items[_itemID];
			
			var _isCompatible = (_itemData.forBattleUse == self.forBattleUse);
			
			// Call effect method
			var _effectMethod = _itemData.Effect;
			
			if (_isCompatible && is_method(_effectMethod)) {
				var _used = _effectMethod(oPlayer);
			
				// Use up item
				if (_used) inventory_deplete_slot(inventory, _slotNum, 1);
			}
		}
	}
}
#endregion