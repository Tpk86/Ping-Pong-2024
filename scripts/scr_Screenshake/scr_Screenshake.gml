/// @function                   screenshake(_time, _magnitude, _fade);
/// @param  {real}  _time       The length of time - in steps - to shake the screen
/// @param  {real}  _magnitude  The amount of screenshake to apply
/// @param  {real}  _fade       How quickly the screenshake effect will fade out
/// @description    Set the screenshake object variables.

function scr_Screenshake (_time, _magnitude, _fade) {
	shake = true;
	shake_Time = _time;
	shake_Magnitude = _magnitude;
	shake_Fade = _fade;
}