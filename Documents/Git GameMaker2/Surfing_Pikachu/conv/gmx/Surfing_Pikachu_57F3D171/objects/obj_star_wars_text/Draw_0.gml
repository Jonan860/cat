//draw_set_color(c_black);
//draw_rectangle(0,0,gui_w,gui_h,false);
//draw_set_colour(c_white);
//for(var p = 0; p < stars; p++)
//{
//   draw_point(px[p],py[p]);
//}

draw_set_font(font_poke_wars)
draw_set_halign(fa_center);
draw_set_color(c_yellow);
var finished = true;

for (var i = 0; i < 28; i++)
{
    var t_star=(timer-i*spacing)
   var yy = start_text[2]+t_star*direction_text[2]
   var zz = start_text[3]+t_star*direction_text[3]
   var yyy = z_star/(zz)*(yy)
   far_spacing=spacing/(power(abs(yy),2)+power(zz,2))*(power(abs(start_text[2]),2)+power(start_text[3]^2,2))
   global.square_distance=scale/(power(abs(yy),2)+power(zz,2))*(power(abs(start_text[2]),2)+power(start_text[3],2))
   if ((yyy > -far_spacing) && (yyy < global.gui_h)) //spacing
    {
       draw_text_transformed(x, yyy, string_hash_to_newline(text[i]), global.square_distance, global.square_distance/2, 0); //scale*yyy/gui_h// scale/((yy)^2+(zz)^2)*(start_text[2]^2+start_text[3]^2), scale/((yy)^2+(zz)^2)*(start_text[2]^2+start_text[3]^2)
       finished = false;
    }
    
}

//for (var i = 0; i < 24; i++)
//{
  //  var yy = gui_h - (timer-i*spacing) + min(gui_h, 0.25 *(timer-i*spacing)*(timer-i*spacing) / gui_h);
  //  if ((yy > -spacing) && (yy < gui_h))
  //  {
   //     draw_text_transformed(0.5 * gui_w, yy, text[i], yy/gui_h, yy/gui_h, 0);
   //     finished = false;
   // }
//}
if (finished)
{
   // instance_destroy();
}

