draw_set_halign(fa_center);
draw_set_font(font_poke_wars)
draw_set_color(c_aqua);
var finished = true;
if(timer>room_speed*10)
{
row+=1
timer=0
}
    if(row=rows+1)
       {
       room_goto_next()
       instance_destroy()
       }
for(i=1; i<=row; i +=1)
    {
      draw_text_transformed(x, i*spacing, string_hash_to_newline(text[i]), scale, scale, 0); //scale*yyy/gui_h// scale/((yy)^2+(zz)^2)*(start_text[2]^2+start_text[3]^2), scale/((yy)^2+(zz)^2)*(start_text[2]^2+start_text[3]^2)
    }
       
      
    
       
    


