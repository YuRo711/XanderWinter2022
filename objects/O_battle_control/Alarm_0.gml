if (O_log.text == "* Enemy turn!") {
	instance_create_depth(0, 0, 0, O_enemy_turn);
} else {
	O_log.text = "* Enemy turn!";
	alarm[0] = 100;
}