function generate_traits(i){
	var traits_num = array_length(ALL_TRAITS) - 1
	enemies[i].traits[0] = ALL_TRAITS[irandom(traits_num)]
	enemies[i].traits[1] = ALL_TRAITS[irandom(traits_num)]
	traits_check(enemies[i].traits[0], enemies[i].traits[1], i)
}