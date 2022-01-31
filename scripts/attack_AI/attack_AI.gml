function attack_AI(agressor){
	aim = irandom_range(0, global.number);
	attack_by_enemy(O_battle_control.actors[aim], agressor);
}