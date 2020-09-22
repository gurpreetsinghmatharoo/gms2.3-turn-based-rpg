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
global.items[ITEM.BANDAGE] = new HealingItem("Bandage", sBandage, 20);
global.items[ITEM.POTION] = new HealingItem("Potion", sPotion, 50);

global.items[ITEM.TEMP_ATTACK] = new AttackIncrease("Temp Attack+", sTempAttack, 15, false);
global.items[ITEM.TEMP_DEFENSE] = new DefenseIncrease("Temp Defense+", sTempDefense, 15, false);

global.items[ITEM.PERM_ATTACK] = new AttackIncrease("Perm Attack+", sPermAttack, 10, true);
global.items[ITEM.PERM_DEFENSE] = new DefenseIncrease("Perm Defense+", sPermDefense, 10, true);