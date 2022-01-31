// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_level() {
	//Decide where the next door is
	randomize()
	var new_door = irandom(3)
	if (new_door == 0)      global.new_door = NORTH
	else if (new_door == 1) global.new_door = SOUTH
	else if (new_door == 2) global.new_door = EAST
	else                    global.new_door = WEST


	//Get the tile level map ID
	var wall_map_id = layer_tilemap_get_id(layer_get_id("wall_tiles"))
	var floor_map_id = layer_tilemap_get_id(layer_get_id("floor_tiles"))
	var door_map_id = layer_tilemap_get_id(layer_get_id("door_tiles"))
	width = room_width div CELL_WIDTH
	height = room_height div CELL_HEIGHT
	grid = ds_grid_create(width, height)
	
	//Clear
	for (var xx = 0; xx < width; xx += 1) {
		for (var yy = 0; yy < height; yy += 1) {
			grid[xx, yy] = VOID
			tilemap_set(wall_map_id, 0, xx, yy)
		}
	}
	instance_deactivate_object(O_item)

	//Create the controller
	var controller_x = width div 2
	var controller_y = height div 2
	if (global.new_door == NORTH || global.new_door == SOUTH) controller_y = 1
	else controller_x = 1
	var controller_direction = irandom(3)
	var steps = 400
	
	O_player.x = controller_x * CELL_WIDTH
	O_player.y = controller_y * CELL_HEIGHT

	var direction_change_odds = 1

	repeat (steps) {
		grid[controller_x, controller_y] = FLOOR
		//Move the controller
		if irandom(direction_change_odds) == direction_change_odds {
			controller_direction = irandom(3)
		}
		var x_direction = lengthdir_x(1, controller_direction * 90)
		var y_direction = lengthdir_y(1, controller_direction * 90)
		controller_x += x_direction
		controller_y += y_direction
	
		//Check if we're out of bounds
		if controller_x < 2 || controller_x >= width - 2 {
			controller_x += - x_direction * 2
		}
		if controller_y < 2 || controller_y >= height - 2 {
			controller_y += - y_direction * 2
		}
	}
	
	generate_doors()
	generate_items()

	//Draw the tiles 
	for (var xx = 0; xx < width ; xx++) {
		for (var yy = 0; yy < height ; yy++) {
			if grid[xx, yy] == FLOOR {
				tilemap_set(floor_map_id, 1, xx, yy)
			}
			else if grid[xx, yy] == DOOR {
				tilemap_set(door_map_id, 1, xx, yy)
			}
			else if grid[xx, yy] == ITEM {
				tilemap_set(floor_map_id, 1, xx, yy)
				item = instance_create_layer(xx*CELL_WIDTH, yy*CELL_HEIGHT, "Instances", O_item)
				item_creation(item)
			}
			else {
				tilemap_set(wall_map_id, 1, xx, yy)
			}
		}
	}
	
}