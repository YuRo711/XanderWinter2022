function attack_by_player(creature){
	creature.hp -= global.acting.attack
	if creature.hp <= 0 {
		instance_destroy(creature)
	}
}