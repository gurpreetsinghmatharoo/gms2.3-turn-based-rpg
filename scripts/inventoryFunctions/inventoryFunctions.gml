/// @func	inventory_add
/// @arg	inventory
/// @arg	itemID
/// @return Whether the item was added or not
function inventory_add (_inventory, _itemID) {
	// Find same slot
	var _slot = inventory_find_slot(_inventory, _itemID);
	
	if (is_struct(_slot)) {
		_slot.count ++;
		return true;
	}
	
	// Add item
	var _size = array_length(_inventory);
	
	for (var i = 0; i < _size; i ++) {
		var _slot = _inventory[i];
		
		if (!is_struct(_slot)) {
			_slot = new Slot(_itemID);
			_inventory[@ i] = _slot;
			
			return true;
		}
	}
	
	// Failed
	return false;
}

/// @func	inventory_find_slot
/// @arg	inventory
/// @arg	itemID
function inventory_find_slot (_inventory, _itemID) {
	var _size = array_length(_inventory);
	
	for (var i = 0; i < _size; i ++) {
		var _slot = _inventory[i];
		
		if (is_struct(_slot) && _slot.itemID == _itemID) {
			return _slot;
		}
	}
	
	return -1;
}

/// @func	inventory_deplete_slot
/// @arg	inventory
/// @arg	slotID
/// @arg	count
function inventory_deplete_slot (_inventory, _slotID, _count) {
	var _slot = _inventory[_slotID];
	
	// Remove count
	_slot.count -= _count;
	
	// Delete slot
	if (_slot.count <= 0) {
		_inventory[@ _slotID] = -1;
	}
}