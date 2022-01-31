function attack_by_enemy(creature, agressor){
	creature.character.hp -= agressor.attack;
	if (creature.character.hp <= 0) {
		for (var i = creature.character.num + 1; i < 4; i += 1) {
			global.party[i - 1] = global.party[i];
		}
		global.number--;
		O_battle_control.enemies[3] = noone;
		instance_destroy(creature.character);
		creature.character = noone;
	}
}