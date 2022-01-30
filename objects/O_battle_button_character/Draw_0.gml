if (character != noone) {
	draw_healthbar(x, y + 170, x + 160, y + 202, (character.hp / character.max_hp) * 100, c_black, c_red, c_lime, 0, true, true);
}
draw_self();