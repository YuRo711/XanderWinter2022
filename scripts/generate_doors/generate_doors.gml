// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_doors(){
	
	if global.new_door == SOUTH {
		var x_door = irandom_range(1, width - 1)
		for (var y_door = height - 1; y_door > 1; y_door -= 1) {
			if grid[x_door, y_door - 1] == FLOOR {
				grid[x_door, y_door] = DOOR
				return
			}
		}
	}
	
	else if global.new_door == NORTH {
		var x_door = irandom_range(1, width - 1)
		for (var y_door = 1; y_door < height - 1; y_door += 1) {
			if grid[x_door, y_door + 1] == FLOOR {
				grid[x_door, y_door] = DOOR
				return
			}
		}
	}
	
	else if global.new_door == WEST {
		var y_door = irandom_range(1, height - 1)
		for (var x_door = 1; x_door < width - 1; x_door += 1) {
			if grid[x_door + 1, y_door] == FLOOR {
				grid[x_door, y_door] = DOOR
				return
			}
		}
	}
	
	else {
		var y_door = irandom_range(1, height - 1)
		for (var x_door = width - 1; x_door > 1; x_door -= 1) {
			if grid[x_door - 1, y_door] == FLOOR {
				grid[x_door, y_door] = DOOR
				return
			}
		}
	} 
	
	generate_doors()
}