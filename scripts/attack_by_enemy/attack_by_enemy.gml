function attack_by_enemy(creature, agressor){
	creature.character.hp -= agressor.attack;
	O_log.text = "* Enemy " + string(agressor.ordinal_scale + 1) + " dealt " + string(agressor.attack) + " damage to the character " + string(creature.character.num + 1) + ".";
	if (creature.character.hp <= 0) {
		for (var i = creature.character.num + 1; i < 4; i += 1) {
			global.party[i - 1] = global.party[i];
			global.party[i - 1].num = i - 1;
		}
		global.party[3] = noone;
		global.number--;
		instance_destroy(creature.character);
		creature.character = noone;
	}
}