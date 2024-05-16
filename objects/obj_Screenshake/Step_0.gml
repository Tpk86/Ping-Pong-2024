/// @desc
if (shake) { 
	shake_Time -= 1; 
	var val_X = choose(-shake_Magnitude, shake_Magnitude); 
	var val_Y = choose(-shake_Magnitude, shake_Magnitude); 
	camera_set_view_pos(view_camera[0], val_X, val_Y); 

	if (shake_Time <= 0) { 
		shake_Magnitude -= shake_Fade; 

		if (shake_Magnitude <= 0) { 
			camera_set_view_pos(view_camera[0], 0, 0); 
			shake = false; 
		} 
	} 
}