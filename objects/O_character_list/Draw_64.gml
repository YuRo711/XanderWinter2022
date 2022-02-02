if visible {
	draw_sprite_ext(S_portrait, 0, view_wport[0] / 2 - 384, view_hport[0] / 2 - 256,
	6, 4, 0, c_white, 1)
	pos = instance_find(O_party_bar, 0).pos
	char = global.party[pos]
	draw_sprite(char.sprite_index, 0, view_wport[0] / 2 - 320, view_hport[0] / 2 - 192)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	for (var i = 0; i < 5; i++) {
		draw_text_transformed(view_wport[0] / 2 - 64, view_hport[0] / 2 - 192 + op_space*i, 
			char.traits[i], 2, 2, 1)
	}
}

