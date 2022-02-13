/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,o_Player)){
with (o_Player){
		maxjump = 2;
		}
		if image_alpha > 0{
			image_alpha-=0.1;
		}
		if image_alpha = 0{
		instance_destroy();}}