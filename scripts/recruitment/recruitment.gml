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
					O_battle_control.actors[i].used_in_round = true;
					break;
				}
			}
			attack_by_player(creature, O_god);
			
			O_battle_control.which_character.used_in_round = true;
			O_battle_control.button_pointer.used_in_round = true;
			O_battle_control.action_counter--;
			if (O_battle_control.which_character != O_battle_control.button_pointer) {
				O_battle_control.action_counter--;
			}
			O_battle_control.button_pointer = O_battle_control.which_character;
			O_battle_control.which_character = noone;
			O_battle_control.which_action = noone;
			O_battle_control.which_enemy = noone;
			O_battle_control.now_layer = 1;
			attack_deactivate();
		} else {
			O_log.text = "Who do you want to kick out?";
			O_battle_control.now_layer = 1;
			O_battle_control.button_pointer = O_battle_control.actors[0];
		}
	} else {
		global.action = noone;
		O_log.text = "The character " + string(agressor.num + 1) + " was unable to recruit a enemy " + string(creature.ordinal_scale + 1) + ".";
		end_of_attack();
	}
}