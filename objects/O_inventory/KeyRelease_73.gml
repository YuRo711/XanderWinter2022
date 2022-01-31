if instance_find(O_character_list, 0).visible == false && instance_find(O_menu, 0).visible == false {
	visible = true
	global.game_paused = true
}