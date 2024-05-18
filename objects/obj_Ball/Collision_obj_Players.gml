/// @desc Bounce
last_Hit = other.player_id;
player_Name = other.player_name;
bounces++;

if (speed < 15) { if (bounces % 3 == 0) { speed += inc_Spd; } }

switch (last_Hit) {
	case 0:
		image_blend = obj_Controller.player_One_Color;
		break;
	case 1:
		image_blend = obj_Controller.player_Two_Color;
		break;
}

move_bounce_solid(false);
scr_Play_Sound(sfx_bathit);
scr_Screenshake(0.1, 0.1, 0.1);