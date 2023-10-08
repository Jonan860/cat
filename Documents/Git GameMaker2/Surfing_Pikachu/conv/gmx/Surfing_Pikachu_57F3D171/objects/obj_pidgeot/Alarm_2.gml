sonicboom=instance_create(x-sprite_width/2,y,obj_sonicboom)
with(sonicboom)
{
speed=15
direction=180-60+irandom(120)

}
gust-=1
if(gust>0)
{
alarm[2]=room_speed/3
}
if(gust=0)
{
state="evade"
direction=choose(90,270)
speed=speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[1]=room_height*3/speeed
}

