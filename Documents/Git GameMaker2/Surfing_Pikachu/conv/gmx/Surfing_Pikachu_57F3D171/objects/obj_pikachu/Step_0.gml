if(room==room_bamse)
{
image_xscale=0.05*y/64
image_yscale=0.07*y/64
}
if(room!=room_bamse)
{
if(global.thunder)
{HP=HP-poison_count/(2*room_speed)}

distance+=1
xdir=0
ydir=0
if(keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down))
{
if(keyboard_check(vk_right) and (x+sprite_width/2)<room_width)
{xdir=1}
if(keyboard_check(vk_left) and (x-sprite_width/2)>0)
{xdir=-1}
if(keyboard_check(vk_up) and (y-sprite_height/2)>0)
{ydir=-1}
if(keyboard_check(vk_down) and (y+sprite_height/2)<room_height)
{ydir=1}
if(xdir!=0 or ydir!=0)
{direction=point_direction(0, 0, xdir, ydir)
speed=15}
else
{speed=0}
}
else
{
speed=0
}
if(audio_is_playing(sound_pikadrop) and alarm[1]<=0)
{
alarm[1]=room_speed
}
if((HP==0 or HP<0) and room!=room_gameover)
{
room_goto(room_gameover)
}
if(global.player="bebis")
{
HP=min(max_HP,HP+1/(room_speed))
}
}




