function end_of_attack(){
	O_battle_control.which_character.used_in_round = true;
	O_battle_control.button_pointer = O_battle_control.which_character;
	O_battle_control.which_character = noone;
	O_battle_control.which_action = noone;
	O_battle_control.which_enemy = noone;
	O_battle_control.action_counter -= 1;
	O_battle_control.now_layer = 1;
	attack_deactivate();
}