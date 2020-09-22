// Enum of all items
enum ITEM {
	BANDAGE,
	POTION,
	
	TEMP_ATTACK,
	TEMP_DEFENSE,
	
	PERM_ATTACK,
	PERM_DEFENSE
}

// Array with item data
global.items[ITEM.BANDAGE] = new HealingItem("Bandage", -1, 20);
global.items[ITEM.POTION] = new HealingItem("Potion", -1, 50);

global.items[ITEM.TEMP_ATTACK] = new AttackIncrease("Battle Attack+", -1, 15, false);
global.items[ITEM.TEMP_DEFENSE] = new DefenseIncrease("Battle Defense+", -1, 15, false);

global.items[ITEM.PERM_ATTACK] = new AttackIncrease("Forever Attack+", -1, 10, true);
global.items[ITEM.PERM_DEFENSE] = new DefenseIncrease("Forever Defense+", -1, 10, true);