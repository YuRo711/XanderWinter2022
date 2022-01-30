for (var i = 0; i < 4; i++) {
	draw_sprite(S_portrait, 0, view_wport[0] / 2 - 256 + 128*i, view_hport[0] - 128)
}
for (var i = 0; i <= global.number; i++) {
	draw_sprite_ext(global.party[i].sprite_index, 0, view_wport[0] / 2 - 256 + 128*i, view_hport[0] - 128,
	0.5, 0.5, 1, c_white, 1)
} 