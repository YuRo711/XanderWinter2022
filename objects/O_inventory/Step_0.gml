if visible {
	Control()
	pos = (3 + pos + dir_down - dir_up) % 3

	if click_enter && variable_global_exists("items"){
		item_use(global.items[pos])
	}
}