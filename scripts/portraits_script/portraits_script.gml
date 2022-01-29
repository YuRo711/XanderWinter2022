// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function portraits_script(){
	var group = global.party
	for (var i = 0; i <= global.number; i++) {
		Place_in_cell(item, instance_find(, instance_find(O_portrait, i)))
	}
}

function Place_in_cell(char, place) {
	draw_sprite(char.sprite_index, 0, place.x, place.y)
	instance_destroy(instance_find(item, 0))
}