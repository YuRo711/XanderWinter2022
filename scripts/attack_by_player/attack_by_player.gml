function attack_by_player(creature, agressor){
	creature.hp -= agressor.attack
	if creature.hp <= 0 {
		cadaver = instance_create_depth(creature.x, creature.y, 0, O_dead_enemy);
		cadaver.left_neighbour = creature.left_neighbour;
		cadaver.right_neighbour = creature.right_neighbour;
		creature.right_neighbour.left_neighbour = cadaver;
		creature.left_neighbour.right_neighbour = cadaver;
		cadaver.ordinal_scale = creature.ordinal_scale;
		O_battle_control.enemies[creature.ordinal_scale] = cadaver;
		instance_destroy(creature);
		O_battle_control.button_pointer = cadaver;
		O_battle_control.cadaver_counter += 1;
		if (O_battle_control.cadaver_counter == O_battle_control.enemies_number) {
			end_of_battle();
		}
	}
}