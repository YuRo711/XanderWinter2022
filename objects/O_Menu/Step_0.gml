if visible {
	Control()
	pos = (3 + pos + dir_down - dir_up) % 3

	if click_enter {
		switch pos {
			case 0:
				visible = false
				global.game_paused = false
				break
			case 2:
				game_end()
		}
	}
}