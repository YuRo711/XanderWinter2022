if global.action == ATTACK {
	hp -= global.acting.attack
	if hp <= 0 {
		instance_destroy(id)
	}
}