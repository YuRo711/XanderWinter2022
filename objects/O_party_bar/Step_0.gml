if pos != -1 {
	Control()
	pos = (global.number + 1 + pos + dir_right - dir_left) % (global.number + 1)
	if click_enter {
		instance_find(O_character_list, 0).visible = true
	}
}

