if (!wait) {
	if (O_battle_control.enemies[turn].type == "alive") {
		attack_AI(O_battle_control.enemies[turn]);
		wait = true;
		alarm[0] = 100;
	} else {
		turn += 1;
		if (turn >= O_battle_control.enemies_number) {
			O_battle_control.enemies_turn = false;
			new_round();
			instance_deactivate_object(id);
		}
	}
}