/// @description Insert description here
// You can write your code in this editor

if isequip == 0 {
	vsp = vsp + grv
	if (place_meeting(x,y+vsp,o_Wall)){
	while (!place_meeting(x,y+sign(vsp),o_Wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
	y = y + vsp;
	}