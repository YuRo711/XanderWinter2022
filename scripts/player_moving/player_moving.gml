 function player_moving(){
	input_up    = keyboard_check(vk_up)
	input_down  = keyboard_check(vk_down)
	input_right = keyboard_check(vk_right)
	input_left  = keyboard_check(vk_left)

	SpeedX = (input_right - input_left) * v 
	SpeedY = (input_down - input_up) * v

	if (SpeedX > 0) var bboxside = bbox_right; else var bboxside = bbox_left
	if (SpeedY > 0) var bboxtb = bbox_bottom; else var bboxtb = bbox_top

	if tilemap_get_at_pixel(collision_tilemap, bboxside + SpeedX, bboxtb) != 0 {
		SpeedX = 0
		SpeedY = 0
	}

	x += SpeedX
	y += SpeedY
}                     