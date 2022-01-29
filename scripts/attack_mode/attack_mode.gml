function attack_mode(button){
	O_battle_control.button_pointer = button;
	global.action = ATTACK
	global.acting = instance_find(O_player, 0)
}