function item_creation(item){
	var item_type_num = irandom(2)
	switch item_type_num {
		case 0: 
			item.item_type = HEAL
			var index = string(irandom_range(1, 3))
			item.sprite_index = asset_get_index("S_heal_" + index)
			item.power_lv = index
			item.item_name = "Healing potion " + index
			break
		case 1: 
			item.item_type = WEAPON
			var index = string(irandom_range(1, 3))
			item.sprite_index = asset_get_index("S_weapon_" + index)
			switch index {
				case 1:
					item.item_name = "Fish knife"
					item.power_lv = 2
				case 2:
					item.item_name = "Mace"
					item.power_lv = 3
				case 3:
					item.item_name = "Throwing knives"
					item.power_lv = 1
			}
			break
		case 2: 
			item.item_type = ARMOR
			var index = string(irandom_range(1, 3))
			item.sprite_index = asset_get_index("S_armor_" + index)
			item.power_lv = index
			item.item_name = "Armor " + index
			break
		case 3: 
			item.item_type = OTHER
			break
	}

}