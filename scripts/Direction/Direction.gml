function Direction(){
	div_right = (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))); 
	div_left = (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))); 
	div_up = (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))); 
	div_down = (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))); 
}	