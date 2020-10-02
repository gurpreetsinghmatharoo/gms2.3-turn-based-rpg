/// @description 

// Inherit the parent event
event_inherited();

// Header
headerText = "INVENTORY";

// Properties
forBattleUse = false;

// Inventory data
inventory = oPlayer.inventory;

inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;

// Cells
cellSize = floor(inventoryWidth / 4);
itemScale = 4;