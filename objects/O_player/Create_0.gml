for (var i = 0; i < 360; i += 1) {
	global.pos_x[i] = x
	global.pos_y[i] = y
}
character_creation()
battle_char_creation()
if room == Room1 {
	sprite_index = asset_get_index("S_character_" + string(irandom_range(1, 6)))
	if num == 1 {
		alarm[0] = irandom_range(1000, 2000)
	}
}
 