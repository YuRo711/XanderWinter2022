event_inherited();
if (button_layer == O_battle_control.now_layer) {
	if (character == noone) {
		if (O_battle_control.button_pointer == id || O_battle_control.which_character == id || O_battle_control.which_action == id) {
			if (O_battle_control.last_mov = "left") {
				O_battle_control.button_pointer = O_battle_control.button_pointer.left_neighbour;
			} else {
				O_battle_control.button_pointer = O_battle_control.button_pointer.right_neighbour;
			}
		}
		image_index = 0;
	}
}