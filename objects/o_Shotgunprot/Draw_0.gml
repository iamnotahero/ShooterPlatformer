/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,o_Player)) and isequip == 0{
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(x,o_Player.y-30,"Press E to Pickup tangina mo");
	draw_set_halign(fa_center);}
if (isequip == 1){
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	if reloading > 0{
		draw_text(o_Player.x+20,o_Player.y-30,"RELOADING");
	}else{
	draw_text(o_Player.x+20,o_Player.y-30,"Ammo: "+string(cur_ammo));
	}}
draw_self();
draw_set_halign(fa_left);