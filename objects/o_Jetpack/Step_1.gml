/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
key_unequip = keyboard_check_pressed(ord("Q"));
key_equip = keyboard_check_pressed(ord("E"));
key_reload = keyboard_check_pressed(ord("R"));
if (place_meeting(x,y,o_Player)) and key_equip{

isequip =1;}

if isequip == 1{
	grv = 0.5
	if o_Player.image_xscale = 1{
		image_xscale = 1;
x = o_Player.x-20
y = o_Player.y}else{
	image_xscale = -1;
x = o_Player.x+20
y = o_Player.y}
//show_debug_message(string(mouse_x));
//show_debug_message(string(mouse_y));
//show_debug_message(string(image_xscale));

firingdelay = firingdelay -1;
recoil = max(0,recoil -1);
playerknockback = max(0,playerknockback -1);
spread = o_Player.walksp-1
if (key_unequip) {
	isequip = 0;}
if (keyboard_check(vk_space)) and cur_ammo > 0{
	cur_ammo-=1;
	with (o_Player){
	usingjetpack = true;
	vsp = vsp - 0.6 }//set zero for no player feedback
}else{
	with (o_Player){
	usingjetpack = false;}}
if (key_reload) and (cur_ammo < 10) and reloading = 0{
cur_ammo = max_ammo;
reloading = reloadtime;}
if reloading > 0{
	reloading-=1/10;}
x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)
with(o_Player){
if (!place_meeting(x+5,y,o_Wall))and (!place_meeting(x-5,y,o_Wall)){
x = x  - lengthdir_x(other.playerknockback,other.image_angle)}
if (!place_meeting(x,y+2,o_Wall)) and (!place_meeting(x,y-5,o_Wall)){
y = y - lengthdir_y(other.playerknockback,other.image_angle)}
if y - lengthdir_y(other.playerknockback,other.image_angle) < y and (!place_meeting(x,y-5,o_Wall)){
y = y - lengthdir_y(other.playerknockback,other.image_angle)}
}

}else{
	with(o_Player){
		grv = 0.4}}




	



	