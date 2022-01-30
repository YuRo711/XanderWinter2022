if visible {
	draw_sprite(S_menu, 0, view_wport[0] / 2 - 64, view_hport[0] / 2 - 64)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	for (var i = 0; i < 3; i++) {
		c = c_white
		if (pos == i) c = c_yellow 
		draw_text_transformed_color (view_wport[0] / 2 - 64, view_hport[0] / 2 - 64 + op_space*i, 
			option[i], 2, 2, 0, c,c,c,c, 1)
	}
}

