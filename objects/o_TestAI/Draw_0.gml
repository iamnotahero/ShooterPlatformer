/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(x,y-50,"HP: "+ string(hp));
	draw_set_halign(fa_center);

	draw_self();
	if  (flash > 0){
		flash--;
		shader_set(sh_white);
		draw_self();
		shader_reset();}