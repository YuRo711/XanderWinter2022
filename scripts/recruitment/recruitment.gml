function recruitment(creature, agressor){
	if (creature.mp <= agressor.speech) {
		O_battle_control.which_enemy = creature;
		if (global.number < 3) {
			new_character = instance_create_depth(0, 0, 0, O_player);
			equating(creature, new_character);
			new_character.visible = false;
			for (var i = 0; i < 4; i++) {
				if (O_battle_control.actors[i].character == noone) {
					O_battle_control.actors[i].character = new_character;
					break;
				}
			}
			attack_by_player(creature, O_god);
			end_of_attack();
		} else {
			
		}
	} else {
		global.action = noone;
	}
}