global.phase=noone
global.player="ida"
global.last_room=noone
global.amber=instance_create_depth(512,room_height-sprite_get_height(spr_amber),-10,obj_amber)
draw_set_color(c_green)
randomize()
room_goto_next()