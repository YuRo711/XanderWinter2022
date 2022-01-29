function Control(){
	dir_right = (keyboard_check(vk_right) || keyboard_check(ord("D"))); 
	dir_left = (keyboard_check(vk_left) || keyboard_check(ord("A"))); 
	dir_up = (keyboard_check(vk_up) || keyboard_check(ord("W"))); 
	dir_down = (keyboard_check(vk_down) || keyboard_check(ord("S"))); 
	click_enter = (keyboard_check_pressed(vk_enter)); 
	click_backspace = (keyboard_check_pressed(vk_backspace)); 
}	