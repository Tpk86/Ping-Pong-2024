/// @desc Crea la pallina

var ball = instance_create_layer(room_width / 2, choose(275, room_height / 2, 625), "Game", obj_Ball);

switch (spawn_Direction) {
	case 0:
		ball.direction = choose(
			135, 140, 145, 150, 155, 160, 165, 170, 175,
			// 180 escluso
			185, 190, 195, 200, 205, 210, 215, 220, 225
			);
		spawn_Direction = 1;
		ball.image_blend = player_Two_Color;
		break;
	case 1:
		ball.direction = choose(
			45, 40, 35, 30, 25, 20, 15, 10, 5,
			// 0 / 360 escluso
			315, 320, 325, 330, 335, 340, 345, 350, 355
			);
		spawn_Direction = 0;
		ball.image_blend = player_One_Color;
		break;
}

ball.speed = 4;

scr_Play_Sound(sfx_ball_spawn);