draw_self()
draw_set_halign(fa_center);
draw_set_valign(fa_top)
draw_set_color(c_yellow);
draw_set_font(font_poke_wars)
var finished = true;
for (var i = 0; i < rows; i++)
{
    var t_star=(timer-i*spacing)
   var yy = start_text[2]+t_star*direction_text[2]
   var zz = start_text[3]+t_star*direction_text[3]
   var global.yyy = z_star/(zz)*(yy)+room_height/2
   far_spacing=spacing/(power(abs(yy),2)+power(zz,2))*(power(abs(start_text[2]),2)+power(start_text[3]^2,2))
   square_distance=scale/(power(abs(yy),2)+power(zz,2))*(power(abs(start_text[2]),2)+power(start_text[3],2))
   //if ((yyy > -far_spacing) && (yyy < gui_h)) //spacing
    //{
     //  draw_text_transformed(0.5 * gui_w, global.yyy+(-1+i)*far_spacing, text[i], square_distance, square_distance, 0); //scale*yyy/gui_h// scale/((yy)^2+(zz)^2)*(start_text[2]^2+start_text[3]^2), scale/((yy)^2+(zz)^2)*(start_text[2]^2+start_text[3]^2)
       //finished = false;
   // }
   image_xscale=4*start_text[3]/zz
   image_yscale=4*start_text[3]/zz
}
draw_set_font(-1)

