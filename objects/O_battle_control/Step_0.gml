Direction();
if (div_left) {
	if (button_pointer.left_neighbour != noone) {
		button_pointer = button_pointer.left_neighbour;
	}
} if (div_right) {
	if (button_pointer.right_neighbour != noone) {
		button_pointer = button_pointer.right_neighbour;
	}
}