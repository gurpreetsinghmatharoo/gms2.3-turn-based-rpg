/// @func	get_entity_data
/// @arg	entity
function get_entity_data (_entity) {
	var _entityData = {
		hp : _entity.hp,
		maxHP : _entity.maxHP,
		attack : _entity.attack,
		defense : _entity.defense,
		level : _entity.level,
		xp : _entity.xp,
	
		nextLevelXP : _entity.nextLevelXP,
		baseLevelXP : _entity.baseLevelXP,
		
		moveDirection : _entity.moveDirection
	}
	
	return _entityData;
}

/// @func	set_entity_data
/// @arg	entityData
/// @arg	entity
function set_entity_data(_entityData, _entity) {
	_entity.hp = _entityData.hp;
	_entity.maxHP = _entityData.maxHP;
	_entity.attack = _entityData.attack;
	_entity.defense = _entityData.defense;
	_entity.level = _entityData.level;
	_entity.xp = _entityData.xp;
	_entity.nextLevelXP = _entityData.nextLevelXP;
	_entity.baseLevelXP = _entityData.baseLevelXP;
	_entity.moveDirection = _entityData.moveDirection;
}