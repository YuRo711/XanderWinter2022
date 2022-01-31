function character_creation(){
	//номер в группе
	if !variable_global_exists("number") global.number = 0
	else global.number += 1
	num = global.number
	global.party[num] = id
	
	collision_tilemap = layer_tilemap_get_id("wall_tiles")
	door_tilemap = layer_tilemap_get_id("door_tiles")

	if num == 0 {
		for (var i = 45; i >= 0; i -= 1) {
			global.pos_x[i] = x;
			global.pos_y[i] = y;
		}
	}
	
	v = 16
	traits = ["strong", "", "", "", ""]
}