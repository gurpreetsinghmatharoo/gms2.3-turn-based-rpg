/// @func	inventory_add
/// @arg	inventory
/// @arg	item
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