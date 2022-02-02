function equating(influencer, changeable){
	changeable.sprite_index = influencer.sprite_index;
	changeable.max_hp = influencer.max_hp;
	changeable.hp = influencer.hp;
	changeable.mp = influencer.mp;
	changeable.max_mp = influencer.max_mp;
	changeable.attack = influencer.attack;
	changeable.mental_attack = influencer.mental_attack;
	changeable.speech = influencer.speech;
	changeable.defence = influencer.defence;
	changeable.healing = influencer.healing;
	for (var i = 0; i < 5; i++) {
		changeable.traits[i] = influencer.traits[i];
	}
	//changeable.traits = influencer.traits;
}