function attack_by_player(creature, agressor){
	creature.hp -= agressor.attack
	if creature.hp <= 0 {
		if (creature.left_neighbour == creature) {
			//win
		}
		cadaver = instance_create_depth(creature.x, creature.y, 0, O_dead_enemy);
		cadaver.left_neighbour = creature.left_neighbour;
		cadaver.right_neighbour = creature.right_neighbour;
		creature.right_neighbour.left_neighbour = cadaver;
		creature.left_neighbour.right_neighbour = cadaver;
		if (creature.ordinal_scale == 0) {
			O_battle_control.first_enemy = cadaver;
		}
		instance_destroy(creature);
		O_battle_control.button_pointer = cadaver;
	}
}