square_distance=0
z_star=2*room_height
start_text[1]=0
start_text[2]=room_height*2.2
start_text[3]=z_star*2

direction_text[1]=0
direction_text[2]=-0.8/10
direction_text[3]=10/10

timer=0;

gui_w = display_get_gui_width();
gui_h = display_get_gui_width();

text_speed = 3.2; //0.2
scale=3.5
spacing = 64*scale; //16

stars = 100;
for (var i = stars-1; i > -1; i--)
{
   px[i] = irandom(gui_w);
    py[i] = irandom(gui_h);
}

