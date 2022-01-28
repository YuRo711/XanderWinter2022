if !variable_global_exists("number") global.number = 0
else global.number += 1
num = global.number
x = room_width div 2 + 32 * (num - 1)
y = room_height div 2
v = 2
collision_tilemap = layer_tilemap_get_id("wall_tiles")


if num == 0 {
	for (var i = 30; i >= 0; i -= 1) {
		global.pos_x[i] = x;
		global.pos_y[i] = y;
	}
}