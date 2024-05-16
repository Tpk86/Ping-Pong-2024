/// @desc Movements

#region MOVEMENTS
	var i = rollback_get_input();

	var key_R = i.right;
	var key_L = i.left;
	var key_D = i.down;
	var key_U = i.up;

	var hori_Input = (key_R - key_L);
	var vert_Input = (key_D - key_U);

	if ((hori_Input != 0) or (vert_Input != 0)) {
		var dir = point_direction(0, 0, hori_Input, vert_Input);
		var move_X = lengthdir_x(spd, dir);
		var move_Y = lengthdir_y(spd, dir);

		switch (player_id) {
			case 0:
				var player_One_X_Left = 100 + sprite_xoffset;
				var player_One_X_Right = room_width / 2 - sprite_xoffset - 70;
				var player_One_Y_Up = 100 + sprite_yoffset;
				var player_One_Y_Down = room_height - 100 - sprite_yoffset;

				x += move_X;
				y += move_Y;

				// Clamp per il giocatore 0
				x = clamp(x, player_One_X_Left, player_One_X_Right);
				y = clamp(y, player_One_Y_Up, player_One_Y_Down);
				break;

			case 1:
				var player_Two_X_Left = room_width / 2 + sprite_xoffset + 70;
				var player_Two_X_Right = room_width - sprite_xoffset - 100;
				var player_Two_Y_Up = 100 + sprite_yoffset;
				var player_Two_Y_Down = room_height - 100 - sprite_yoffset;

				x += move_X;
				y += move_Y;

				// Clamp per il giocatore 1
				x = clamp(x, player_Two_X_Left, player_Two_X_Right);
				y = clamp(y, player_Two_Y_Up, player_Two_Y_Down);
				break;
		}
	}
#endregion

if (instance_exists(obj_Ball)) {
	spd = obj_Ball.speed / 2;
} else {
	spd = 2;
}