if pos == -1 {
	pos = 0
	global.game_paused = true
} else {
	pos = -1
	global.game_paused = false
}