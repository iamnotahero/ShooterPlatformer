/// @description Insert description here
// You can write your code in this editor
with (other)
{
	hp--
	flash = 3
	other.playerknockback = 4
	if (!place_meeting(x+5,y,o_Wall))and (!place_meeting(x-5,y,o_Wall)){
	x = x  + lengthdir_x(other.playerknockback,other.image_angle)}
	if (!place_meeting(x,y+2,o_Wall)) and (!place_meeting(x,y-5,o_Wall)){
	y = y + lengthdir_y(other.playerknockback,other.image_angle)}
	if y + lengthdir_y(other.playerknockback,other.image_angle) < y and (!place_meeting(x,y-5,o_Wall)){
	y = y + lengthdir_y(other.playerknockback,other.image_angle)}
}
instance_destroy();