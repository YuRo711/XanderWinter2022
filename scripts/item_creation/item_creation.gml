function item_creation(item){
	var item_type_num = irandom(0)
	switch item_type_num {
		case 0: 
			item.item_type = HEAL
			var index = string(irandom_range(1, 3))
			item.sprite_index = asset_get_index("S_heal_" + index)
			item.item_name = "Healing potion " + index
			break
		case 1: 
			item.item_type = WEAPON
			break
		case 2: 
			item.item_type = ARMOR
			break
		case 3: 
			item.item_type = OTHER
			break
	}

}