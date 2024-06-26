/// @desc Bounce

switch (last_Hit) {
	// Nessuno ha toccato la palla
	case -4:
		obj_Players.goal_P_Two++;
		obj_Players.player_One_Score -= 5;
		obj_Players.player_Two_Score += 5;
		break;
	// Il giocatore 1 ha toccato la palla (Autogoal)
	case 0:
		obj_Players.autogoal_P_One++;
		obj_Players.player_One_Score -= 5;
		obj_Players.player_Two_Score += 5;
		break;
	// Il giocatore 2 ha toccato la palla (Goal)
	case 1:
		obj_Players.goal_P_Two++;
		obj_Players.player_Two_Score += 5;
		break;
}

scr_Play_Sound(sfx_brick_break);
scr_Screenshake(0.1, 0.1, 0.1);
instance_destroy();
obj_Controller.alarm[0] = game_get_speed(gamespeed_fps);