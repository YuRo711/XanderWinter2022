if !variable_global_exists("number") global.number = 0
else global.number += 1
num = global.number
v = 2
collision_tilemap = layer_tilemap_get_id("wall_tiles")
door_tilemap = layer_tilemap_get_id("door_tiles")


if num == 0 {
	for (var i = 30; i >= 0; i -= 1) {
		global.pos_x[i] = x;
		global.pos_y[i] = y;
	}
}

hp = 10
attack = 1
defence = 0