/// @desc Check if stuck

if (place_meeting(x, y, obj_Players) || place_meeting(x, y, obj_Wall_Top) || place_meeting(x, y, obj_Wall_Bottom)) {
	for (var i = 1; i < 1024; i++) {
		// Check collision with obj_Players
		if (place_meeting(x, y, obj_Players)) {
			// Right
			if (!place_meeting(x + i, y, obj_Players)) {
				x += i;
				break;
			}

			// Left
			if (!place_meeting(x - i, y, obj_Players)) {
				x -= i;
				break;
			}

			// Up
			if (!place_meeting(x, y - i, obj_Players)) {
				y -= i;
				break;
			}

			// Down
			if (!place_meeting(x, y + i, obj_Players)) {
				y += i;
				break;
			}

			// Top Right
			if (!place_meeting(x + i, y - i, obj_Players)) {
				x += i;
				y -= i;
				break;
			}

			// Top Left
			if (!place_meeting(x - i, y - i, obj_Players)) {
				x -= i;
				y -= i;
				break;
			}

			// Bottom Right
			if (!place_meeting(x + i, y + i, obj_Players)) {
				x += i;
				y += i;
				break;
			}

			// Bottom Left
			if (!place_meeting(x - i, y + i, obj_Players)) {
				x -= i;
				y += i;
				break;
			}
		}

		// Check collision with obj_Wall_Top
		if (place_meeting(x, y, obj_Wall_Top)) {
			// Down
			if (!place_meeting(x, y + i, obj_Wall_Top)) {
				y += i;
				break;
			}
		}

		// Check collision with obj_Wall_Bottom
		if (place_meeting(x, y, obj_Wall_Bottom)) {
			// Up
			if (!place_meeting(x, y - i, obj_Wall_Bottom)) {
				y -= i;
				break;
			}
		}
	}
}