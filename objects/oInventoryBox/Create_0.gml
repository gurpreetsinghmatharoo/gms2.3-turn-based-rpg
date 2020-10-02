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
cellsPerRow = 4;
cellSize = floor(inventoryWidth / cellsPerRow);
itemScale = 4;

// Input
hoverSlotNum = -1;