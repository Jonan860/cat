draw_self()
draw_set_valign(fa_middle)
if(selected)
{draw_text_transformed(x,y,string_hash_to_newline(keyboard_string),2,2,0)}
else
draw_text_transformed(x,y,string_hash_to_newline(global.HP_box),2,2,0)
draw_set_valign(fa_bottom)


