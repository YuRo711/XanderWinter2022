if global.action == ATTACK {
	attack_by_player(id);
	hp -= global.acting.attack
	if hp <= 0 {
		instance_destroy(id)
	}
}