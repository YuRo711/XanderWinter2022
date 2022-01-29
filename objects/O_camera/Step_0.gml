//Update destination
if (instance_exists(follow)) {
	x = follow.x
	y = follow.y 
}
 

camera_set_view_pos(cam, x - halfWidthView, y - halfHeightView)