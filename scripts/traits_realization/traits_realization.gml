//ALL_TRAITS = ["kind", "cruel", "brave", "coward", "selfless", "stubborn", "compliant", "weak", 
//		"fragile", "strong"]

function traits_realization(char){
	curr_traits = char.traits
	for (var i = 0; i < array_length(curr_traits); i++) {
		switch curr_traits[i] {
			case "kind":
				char.attack -= 1
				char.healing += 1
			case "cruel":
				char.attack += 1
				char.healing -= 1
			case "brave":
				char.attack += 1
				char.defence -= 1
			case "coward":
				char.attack -= 1
				char.defence += 1
			case "weak":
				char.attack -= 1
			case "fragile":
				char.defence -= 1
			case "strong":
				char.attack += 1
		}
	}
}