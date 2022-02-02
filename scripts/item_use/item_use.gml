
function item_use(item){
	party_bar = instance_find(O_party_bar, 0)
	party_bar.pos = 0
	party_bar.inv = true
	Control()
	if click_enter {
		if item.item_type == WEAPON {
			global.party[party_bar.pos].attack -= global.party[pos].attack_bonus
			global.party[party_bar.pos].attack_bonus = int64(item.power_lv)
			global.party[party_bar.pos].attack += global.party[pos].attack_bonus
		}
		else if item.item_type == HEAL {
			global.party[party_bar.pos].hp += int64(item.power_lv) * 3
			global.party[party_bar.pos].hp = min(global.party[pos].hp, global.party[pos].max_hp)
		}
		//Deleting
		for (var i = pos + 1; i < global.items_num; i++) {
			global.items[i - 1] = global.items[i];
		}
		instance_find(O_inventory, 0).visible = false
		global.items_num--
		instance_destroy(item)
		party_bar.inv = false
	}
}