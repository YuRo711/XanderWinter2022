function traits_check(a, b, i){
	switch a {
		case "kind":
			if (b == "cruel") generate_traits(i); break
		case "cruel":
			if (b == "kind") generate_traits(i); break
		case "coward":
			if (b == "brave" || b == "selfless") generate_traits(i); break
		case "brave":
			if (b == "coward") generate_traits(i); break
		case "selfless":
			if (b == "coward") generate_traits(i); break
		case "stubborn":
			if (b == "compliant") generate_traits(i); break
		case "compliant":
			if (b == "stubborn") generate_traits(i); break
	}
	if (b == a) generate_traits(i)
}