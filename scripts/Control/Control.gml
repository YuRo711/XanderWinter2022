function Control(){
	dir_right = (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))); 
	dir_left = (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))); 
	dir_up = (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))); 
	dir_down = (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))); 
	click_enter = (keyboard_check_pressed(vk_enter)); 
	click_backspace = (keyboard_check_pressed(vk_backspace)); 
	click_k = (keyboard_check_pressed(ord("K"))); 
	click_o = (keyboard_check_pressed(ord("O"))); 
}	