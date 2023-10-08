if(night_shades>0)
{
if(night_shades%2==1)
{
__background_set( e__BG.Index, 0, bg_night_shade )
night_shades-=1
alarm[2]=room_speed/3
}
else if(night_shades%2==0)
{__background_set( e__BG.Index, 0, background_space )
night_shades-=1
alarm[2]=room_speed/3}
}
else if(night_shades==0)
{
with(instance_find(obj_pikachu,0))
{
HP=max(0,HP-25)
}
state="evade"
direction=choose(90,270)
speed=speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[1]=room_height*3/speeed
vulnerable=0
}


