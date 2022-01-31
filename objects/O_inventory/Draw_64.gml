if visible {
	draw_sprite_ext(S_portrait, 0, view_wport[0] / 2 - 384, view_hport[0] / 2 - 256,
	6, 4, 0, c_white, 1)
	if (variable_global_exists("items")) {
		for (var i = 0; i < array_length(global.items); i++) {
			draw_sprite_ext(global.items[i].sprite_index, 0, view_wport[0] / 2 - 256, 
				view_hport[0] / 2 - 192, 0.25, 0.25, 0, c_white, 1)
			draw_text(view_wport[0] / 2 - 160, view_hport[0] / 2 - 192 + op_space*i, global.items[i].item_name)
		}
	}
}

