//Update destination
if (instance_exists(follow)) {
	x += (follow.x - x) * 0.15;
	y += (follow.y - y) * 0.15;
}
 

camera_set_view_pos(cam, x - halfWidthView, y - halfHeightView)