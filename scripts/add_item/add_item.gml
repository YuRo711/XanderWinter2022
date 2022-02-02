#macro WEAPON 40
#macro ARMOR 41
#macro HEAL 42
#macro OTHER 43

function add_item(item_id){
	if variable_global_exists("items") {
		var j = array_length(global.items)
		global.items[j] = item_id
	} else {
		global.items[0] = item_id
	}
	item_id.out = false
}