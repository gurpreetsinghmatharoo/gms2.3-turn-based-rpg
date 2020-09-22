// Enum of all items
enum ITEM {
	SMALL_POTION,
	LARGE_POTION,
	TEMP_ATTACK,
	TEMP_DEFENSE,
	PERM_ATTACK,
	PERM_DEFENSE
}

// Array with item data
global.items[ITEM.SMALL_POTION] = new Potion(20);
global.items[ITEM.LARGE_POTION] = new Potion(50);