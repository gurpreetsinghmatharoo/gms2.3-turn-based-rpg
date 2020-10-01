// Enum of all items
enum ITEM {
	BANDAGE,
	POTION,
	
	BATTLE_ATTACK,
	BATTLE_DEFENSE,
	
	PERM_ATTACK,
	PERM_DEFENSE
}

// Array with item data
global.items[ITEM.BANDAGE] = new HealingItem("Bandage", sBandage, 20);
global.items[ITEM.POTION] = new HealingItem("Potion", sPotion, 50);

global.items[ITEM.BATTLE_ATTACK] = new AttackIncrease("Battle Attack+", sBattleAttack, 15, true);
global.items[ITEM.BATTLE_DEFENSE] = new DefenseIncrease("Battle Defense+", sBattleDefense, 15, true);

global.items[ITEM.PERM_ATTACK] = new AttackIncrease("Perm Attack+", sPermAttack, 10, false);
global.items[ITEM.PERM_DEFENSE] = new DefenseIncrease("Perm Defense+", sPermDefense, 10, false);