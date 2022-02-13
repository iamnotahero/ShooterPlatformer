/// @description Insert description here
// You can write your code in this editor
key_unequip = keyboard_check_pressed(ord("Q"));
key_equip = keyboard_check_pressed(ord("E"));
key_reload = keyboard_check_pressed(ord("R"));
if (place_meeting(x,y,o_Player)) and key_equip{

isequip =1;}

if isequip == 1{
	if o_Player.image_xscale = 1{
x = o_Player.x+15
y = o_Player.y+5}else{
x = o_Player.x-15
y = o_Player.y+5}
//show_debug_message(string(mouse_x));
//show_debug_message(string(mouse_y));
//show_debug_message(string(image_xscale));
if o_Player.image_xscale = 1{
	image_yscale = 1;
	if mouse_x > o_Player.x{
image_angle = point_direction(x,y,mouse_x,mouse_y);}else{
	if mouse_y < o_Player.y{
	image_angle = point_direction(x,y,o_Player.x+100,mouse_y-o_Player.y);}
	else{image_angle = point_direction(x,y,o_Player.x+100,mouse_y+o_Player.y);}}
	}
if o_Player.image_xscale = -1{	
	image_yscale = -1;
	 if mouse_x < o_Player.x{
image_angle = point_direction(x,y,mouse_x,mouse_y);}else{
	if mouse_y < o_Player.y{
	image_angle = point_direction(x,y,o_Player.x-100,mouse_y-o_Player.y);}
	else{image_angle = point_direction(x,y,o_Player.x-100,mouse_y+o_Player.y);}}	
	}
firingdelay = firingdelay -1;
recoil = max(0,recoil -1);
spread = o_Player.walksp-1
playerknockback = max(0,playerknockback -1);
if (key_unequip) {
	isequip = 0};
if (mouse_check_button(mb_left)) and (firingdelay < 0 ) and cur_ammo > 0 and reloading = 0 {
	cur_ammo-=1;
	firingdelay = 2;
	recoil = 4;
	if o_Player.iscrouched == false{
	playerknockback = recoil - 3}else{
		playerknockback = 0}
	with (instance_create_layer(x,y-6,"Bullet",o_BulletMachine)){
		speed = 25;
		direction = other.image_angle + random_range(-other.spread,other.spread);
		image_angle = direction;
		}
}
if reloading > 0{
	reloading-=0.1;}
if (key_reload) and (cur_ammo < max_ammo) and reloading = 0{
cur_ammo = max_ammo
reloading = reloadtime;}
x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)
with(o_Player){
if (!place_meeting(x+5,y,o_Wall))and (!place_meeting(x-5,y,o_Wall)){
x = x  - lengthdir_x(other.playerknockback,other.image_angle)}
if (!place_meeting(x,y+2,o_Wall)) and (!place_meeting(x,y-5,o_Wall)){
y = y - lengthdir_y(other.playerknockback,other.image_angle)}
if y - lengthdir_y(other.playerknockback,other.image_angle) < y and (!place_meeting(x,y-5,o_Wall)){
y = y - lengthdir_y(other.playerknockback,other.image_angle)}
}}




	