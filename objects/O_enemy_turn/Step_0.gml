if (!wait) {
	attack_AI(O_battle_control.enemies[turn]);
	wait = true;
	alarm[0] = 100;
}