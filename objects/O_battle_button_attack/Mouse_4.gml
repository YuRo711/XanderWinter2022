if (O_battle_control.now_layer == 2) {
	O_battle_control.button_pointer = id;
	global.action = ATTACK
	global.acting = instance_find(O_player, 0)
}