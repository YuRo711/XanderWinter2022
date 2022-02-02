function new_round(){
	O_battle_control.action_counter = 0;
	for (var i = 0; i < 4; i += 1) {
		if (O_battle_control.actors[i].character != noone) {
			O_battle_control.action_counter += 1;
			O_battle_control.actors[i].used_in_round = false;
		}
	}
	O_log.text = "* Your turn!";
}