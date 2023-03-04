
event_inherited()
if(room=room_inventory and global.amber.potion.count>0){
	old_color=draw_get_color()
	draw_set_color(c_teal)
	old_halign=draw_get_halign()
		if(selected){draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,0,c_white,1)}
	else{draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1)}
draw_text(x,y,string(global.amber.potion.count))
draw_set_color(old_color)
draw_set_halign(old_halign)
}