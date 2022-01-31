function end_of_battle(){
	room_goto(Room1);
	for (var i = 0; i < 4; i += 1) {
		if (global.party[i] != noone){
			global.party[i].x = global.pos_x[0];
			global.party[i].y = global.pos_y[0];
			global.party[i].visible = true;
		}
	}
}