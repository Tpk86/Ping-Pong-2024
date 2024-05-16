/// @desc

randomize();

#region FONT
	// my_Font = font_add("NotoMono-Regular.ttf", 16, false, false, 32, 128);
	// font_enable_sdf(my_Font, true);
	draw_set_font(my_Font);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);

	font_enable_effects(my_Font, true, {
	    outlineEnable: true,
	    outlineDistance: 2,
	    outlineColour: c_black
	});
#endregion

layer_Game = "Game";
spawn_Direction = choose(0, 1);
player_One_Color = #0080FF;
player_Two_Color = #FF8000;

rollback_define_input({
	right: [ord("D"), vk_right],
	left: [ord("A"), vk_left],
	down: [ord("S"), vk_down],
	up: [ord("W"), vk_up],
	fullscreen: ord("F"),
	mouse_Coord_X: m_axisx,
	mouse_Coord_Y: m_axisy,
});

rollback_define_player(obj_Players, "Game");

// true = offline | false = online
if (!rollback_join_game()) { rollback_create_game(2, true); }
