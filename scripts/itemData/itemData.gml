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

global.items[ITEM.TEMP_ATTACK] = new AttackIncrease(15, false);
global.items[ITEM.TEMP_DEFENSE] = new DefenseIncrease(15, false);

global.items[ITEM.PERM_ATTACK] = new AttackIncrease(10, true);
global.items[ITEM.PERM_DEFENSE] = new DefenseIncrease(10, true);