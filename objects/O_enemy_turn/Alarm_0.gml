wait = false;
turn += 1;
if (turn >= O_battle_control.enemies_number) {
	O_battle_control.enemies_turn = false;
	new_round();
	instance_deactivate_object(id);
}