function begin_battle(){
	
	ALL_TRAITS = ["kind", "cruel", "brave", "coward", "selfless", "stubborn", "compliant", "weak", 
		"fragile"]
	randomize()
	
	//Generate enemies
	var enemies_number = irandom_range(max(1, global.number - 1), min(4, global.number + 1))
	enemies = []
	for (var i = 0; i < enemies_number; i += 1) {
		enemies[i] = instance_create_layer(0, 0, "Instances", O_enemy)
		enemies[i].num = i
		//generate_traits(i)
		enemies[i].sprite_index = asset_get_index("S_character_" + string(irandom_range(1, 3)))
	}
}