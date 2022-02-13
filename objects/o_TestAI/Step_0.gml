/// @description Insert description here
// You can write your code in this editor
//Check Movement

vsp = vsp + grv
//double jump
//show_debug_message("1Move = "+string(move)+"Horizontal Speed = "+string(hsp));
 //check if on grouhnd
if (place_meeting(x,y+1,o_Wall)){
jumps = 0;}
if (place_meeting(x,y+1,o_AiTest)) and jumps < 1{
jumps+=1;
vsp = -5
 }


//horizontal
if (place_meeting(x+hsp,y,o_Wall)){
	while (!place_meeting(x+sign(hsp),y,o_Wall)){
		x+=sign(hsp);
	}
	hsp *= -1;
}
x = x + hsp;
//vertical
if (place_meeting(x,y+vsp,o_Wall)){
	while (!place_meeting(x,y+sign(vsp),o_Wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
//Animation
if (!place_meeting(x,y+1,o_Wall)){
	sprite_index = s_EnemyJ;
	image_speed = 0;
	if(sign(vsp) > 0){
		image_index = 1;}
		else {
			image_index = 0;}
	}else{
		image_speed = 1;
		if (hsp == 0){
			sprite_index = s_EnemyI;}else{
			sprite_index = s_EnemyW;}}
			
if (hsp != 0) {
	image_xscale = sign(hsp);}
