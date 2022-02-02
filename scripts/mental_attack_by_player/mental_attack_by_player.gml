function mental_attack_by_player(agressor){
	for (var i = 0; i < O_battle_control.enemies_number; i++) {
		O_battle_control.enemies[i].mp -= agressor.mental_attack;
	}
	O_log.text = "* Character " + string(agressor.num + 1) + " dealt " + string(agressor.mental_attack) + " mental damage to the enemy team.";
}