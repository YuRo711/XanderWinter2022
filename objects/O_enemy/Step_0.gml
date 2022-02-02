if (O_battle_control.button_pointer == id) {
	pointer.image_index = 1;
} else {
	pointer.image_index = 0;
}
if ((hp / max_hp) < (mp / max_mp)) {
	mp = (hp / max_hp) * max_mp;
}