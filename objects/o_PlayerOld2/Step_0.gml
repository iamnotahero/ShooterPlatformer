/// @description Insert description here
// You can write your code in this editor
// Input
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
key_crouch = keyboard_check(vk_control)
key_run = keyboard_check(vk_shift)
//Check Movement
var move = key_right - key_left;

if (place_meeting(x,y+3,o_Wall)){
hsp = move * walksp;}
// check edge walkable
if (place_meeting(x+2,y+1,o_Wall)){
hsp = move * walksp;}
//CHANGE NOT ON GROUND CANT CONTROL TO IF MOVING NOT 0
if (place_meeting(x-2,y+1,o_Wall)){
hsp = move * walksp;}
//detect not on ground and hit wall
if (!place_meeting(x,y+1,o_Wall)) and (place_meeting(x-2,y,o_Wall)){
walksp = 0;}
if (!place_meeting(x,y+1,o_Wall)) and (place_meeting(x+2,y,o_Wall)){
walksp = 0;}
vsp = vsp + grv
//double jump
show_debug_message("playerMove = "+string(move)+"Horizontal Speed = "+string(hsp));
 //check if on ground and if jump is max
if (place_meeting(x,y+1,o_Wall)) and jumps == maxjump{
jumps=0;
}
// Jump
if (key_jump) and jumps < maxjump  and iscrouched == false{
jumps+=1;
vsp = -5
 }
 if (key_jump) and jumps < maxjump  and (place_meeting(x-2,y,o_Wall)){
jumps+=1;
vsp = -2
walksp = 4
 }
  if (key_jump) and jumps < maxjump  and (place_meeting(x+2,y,o_Wall)){
jumps+=1;
vsp = -2
walksp = 4
 }
//show_debug_message(jumps);
if key_crouch and (place_meeting(x,y+1,o_Wall)) and isrunning == false{
iscrouched = true;
walksp = 1;}else{
	iscrouched = false;}
if (key_run) and(!place_meeting(x-1,y,o_Wall)) and(!place_meeting(x+1,y,o_Wall)) and iscrouched == false{
	isrunning = true;
walksp = 7;}else{
	isrunning = false;}
	//REDUCE WALKSPEED
if walksp > maxwalksp and(place_meeting(x,y+1,o_Wall))and isrunning == false and iscrouched == false{
	walksp-=1;}
if walksp < maxwalksp and iscrouched == false and isrunning == false{
	walksp+=1;}
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
			
if mouse_x > x{
	image_xscale = 1}
if mouse_x < x{
	image_xscale = -1}
