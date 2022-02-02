for (var i = 0; i < 4; i++) {
	draw_sprite(S_portrait, 0, view_wport[0] / 2 - 256 + 128*i, view_hport[0] - 128)
	if pos == i {
		draw_sprite(S_portrait, 1, view_wport[0] / 2 - 256 + 128*i, view_hport[0] - 128)
	}
}
for (var i = 0; i <= global.number; i++) {
	draw_sprite_ext(global.party[i].sprite_index, 0, view_wport[0] / 2 - 256 + 128 * i, view_hport[0] - 128,
	0.5, 0.5, 1, c_white, 1)
	draw_healthbar(view_wport[0] / 2 - 248 + 128 * i, view_hport[0] - 24,
	view_wport[0] / 2 - 136 + 128 * i, view_hport[0] - 8, global.party[i].hp / global.party[i].max_hp * 100,
	c_black, c_red, c_green, 0, true, true)  
}
