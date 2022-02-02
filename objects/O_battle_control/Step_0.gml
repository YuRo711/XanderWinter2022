 Control();
if (!enemies_turn) {
	if (dir_left) {
		if (button_pointer.left_neighbour != noone) {
			button_pointer = button_pointer.left_neighbour;
			last_mov = "left";
		}
	} if (dir_right) {
		if (button_pointer.right_neighbour != noone) {
			button_pointer = button_pointer.right_neighbour;
			last_mov = "right";
		}
	} if (click_enter) {
		if (now_layer <= max_layer) {
			if (now_layer == 1) {
				if (global.action == RECRUITMENT) {
					attack_by_enemy(button_pointer, O_god);
					recruitment(which_enemy, O_god);
				} else if (global.action == noone and !button_pointer.used_in_round) {
					which_character = button_pointer;
					button_pointer = first_action;
					now_layer += 1;
				}
			} else if (now_layer == 2) {
				if (button_pointer.purpose == "attack") {
					attack_mode(button_pointer);
					which_action = button_pointer;
					button_pointer = enemies[0];
					now_layer += 1;
				} else if (button_pointer.purpose == "dismoral") {
					mental_attack_by_player(which_character.character);
					end_of_attack();
				} else if (button_pointer.purpose == "recruitment") {
					recruitment_mode();
					which_action = button_pointer;
					button_pointer = enemies[0];
					now_layer += 1;
				}
			} else if (now_layer == 3) {
				if (global.action == ATTACK) {
					attack_by_player(button_pointer, which_character.character);
					end_of_attack();
				} else if (global.action == RECRUITMENT) {
					recruitment(button_pointer, which_character.character);
				}
			}
		}
		if (action_counter == 0) {
			enemies_turn = true;
			instance_create_depth(0, 0, 0, O_enemy_turn);
		}
		last_mov = "right";
	} if (click_backspace) {
		if (now_layer > min_layer) {
			if (now_layer == 2) {
				button_pointer = which_character;
				which_character = noone;
			}
			if (now_layer == 3) {
				attack_deactivate();
				button_pointer = which_action;
				which_action = noone;
			}
			now_layer -= 1;
		}
		last_mov = "right";
	} if (click_k) {
		end_of_battle();
	} if (click_o) {
		
	}
}
