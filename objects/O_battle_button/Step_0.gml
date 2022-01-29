if (button_layer == O_battle_control.now_layer) {
	if (O_battle_control.button_pointer == id || O_battle_control.which_character == id) {
		image_index = 1;
	}
}
if (O_battle_control.button_pointer != id and O_battle_control.which_character != id) {
	image_index = 0;
}
  