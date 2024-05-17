/// @desc

horizontal_Movement = 0;
vertical_Movement = 0;

accel = 0.25;
decel = 0.05;
max_Spd = 2;

autogoal_P_One = 0;
autogoal_P_Two = 0;

goal_P_One = 0;
goal_P_Two = 0;

hits = 0;
inc_Spd = 0.25;
player_One_Score = 0;
player_Two_Score = 0;
spd = 2;
y = room_height / 2;

switch (player_id) {
	case 0:
		x = 400;
		image_blend = obj_Controller.player_One_Color;
		break;
	case 1:
		x = 1200;
		image_blend = obj_Controller.player_Two_Color;
		break;
}