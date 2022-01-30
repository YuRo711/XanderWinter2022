function begin_battle(){
	
	ALL_TRAITS = ["kind", "cruel", "brave", "coward", "selfless", "stubborn", "compliant", "weak", 
		"fragile"]
	randomize()
	
	//Hide party
	for (var i = 0; i <= global.number; i++) {
		instance_find(O_player, i).visible = false
	}
	
	//Generate enemies
	enemies_number = irandom_range(max(1, global.number - 1), min(4, global.number + 1))
	enemies = []
	var newX = 200;
	var newY = 100;
	for (var i = 0; i < enemies_number; i += 1) {
		enemies[i] = instance_create_layer(newX, newY, "Instances", O_enemy)
		newX += 256;
		enemies[i].ordinal_scale = i;
		//generate_traits(i)
		enemies[i].sprite_index = asset_get_index("S_character_" + string(irandom_range(1, 3)))
	}
	for (var i = 0; i < enemies_number; i += 1) {
		enemies[i].left_neighbour = enemies[(i - 1 + enemies_number) % enemies_number];
		enemies[i].right_neighbour = enemies[(i + 1 + enemies_number) % enemies_number];
	}
	O_battle_control.first_enemy = enemies[0];
}