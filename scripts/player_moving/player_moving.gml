 function player_moving(){
	 
	 Control()

	SpeedX = (dir_right - dir_left) * v 
	SpeedY = (dir_down - dir_up) * v

	if (SpeedX > 0) var bboxside = bbox_right; else var bboxside = bbox_left
	if (SpeedY > 0) var bboxtb = bbox_bottom; else var bboxtb = bbox_top

	if tilemap_get_at_pixel(collision_tilemap, bboxside + SpeedX, bboxtb) != 0 {
		SpeedX = 0
	}
	if tilemap_get_at_pixel(collision_tilemap, bboxside, bboxtb + SpeedY) != 0 {
		SpeedY = 0
	}
	else if tilemap_get_at_pixel(door_tilemap, bboxside + SpeedX, bboxtb) != 0 {
		if num == 0 {
			generate_level()
		}
	}
	x += SpeedX
	y += SpeedY

	if num == 0 {
		if x != xprevious or y != yprevious {
			for (var i = 30; i > 0; i -= 1) {
				global.pos_x[i] = global.pos_x[i - 1]
				global.pos_y[i] = global.pos_y[i - 1]
			}
			global.pos_x[0] = x
			global.pos_y[0] = y
		}
	} else {
		x = global.pos_x[10 * num]
		y = global.pos_y[10 * num]
	}
}