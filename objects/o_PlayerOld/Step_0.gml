/// @description Insert description here
// You can write your code in this editor
// Input
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
//Check Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv
//double jump
//show_debug_message("playerMove = "+string(move)+"Horizontal Speed = "+string(hsp));
if (key_jump) and jumps < 1{
jumps+=1;
vsp = -5
 }
 //check if on grouhnd
if (place_meeting(x,y+1,o_Wall)){
jumps = 0;}
//horizontal
if (place_meeting(x+hsp,y,o_Wall)){
	while (!place_meeting(x+sign(hsp),y,o_Wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
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
	sprite_index = s_PlayerJ;
	image_speed = 0;
	if(sign(vsp) > 0){
		image_index = 1;}
		else {
			image_index = 0;}
	}else{
		image_speed = 1;
		if (hsp == 0){
			sprite_index = s_Player;}else{
			sprite_index = s_PlayerW;}}
			
if (hsp != 0) {
	image_xscale = sign(hsp);}
