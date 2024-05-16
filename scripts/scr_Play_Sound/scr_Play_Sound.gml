/// @function scr_Play_Sound
/// @desc Riproduce un suono con variazione di pitch
/// @param {sound} sound - Il suono da riprodurre

function scr_Play_Sound(sound) {
	var pitch_Variation = choose(0.9, 1.0, 1.1);
	audio_play_sound(sound, 1, false, 1, false, pitch_Variation);
}
