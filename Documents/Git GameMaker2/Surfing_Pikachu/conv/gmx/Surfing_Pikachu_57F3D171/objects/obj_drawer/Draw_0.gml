draw_text(500,500,string_hash_to_newline(instance_find(obj_pikachu,0).poison_count))
draw_text(500,525,string_hash_to_newline(string(global.player)))
draw_text(500,550,string_hash_to_newline(string(global.n)))
draw_text(500,575,string_hash_to_newline(string(global.m)))
draw_text(500,600,string_hash_to_newline(string(global.number)))
if(instance_exists(obj_pidgeot))
{
draw_text(500,625,string_hash_to_newline(instance_find(obj_pidgeot,0).state))
}
if(instance_exists(obj_dragonite))
{
draw_text(500,650,string_hash_to_newline(obj_dragonite.alarm[2]))
draw_text_ext_transformed(500,300,string_hash_to_newline((mouse_x-instance_find(obj_dragonite,0).x)/instance_find(obj_dragonite,0).sprite_width),10,100,3,3,0)
draw_text_ext_transformed(600,300,string_hash_to_newline((mouse_y-instance_find(obj_dragonite,0).y)/instance_find(obj_dragonite,0).sprite_height),10,100,3,3,0)
}

