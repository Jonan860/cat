if(state=="enter" and x<room_width-sprite_width/2)
{
state="evade"
direction=choose(90,270)
speed=speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[1]=room_height*3/speeed
}
if(HP==0)
{alive=0}
if(alive==0)
{
speed=1
direction=0
}
if(alive==0 and x>room_width+sprite_width/2)
{
audio_stop_all()
global.level+=1
global.boss=0
instance_destroy()
}

//random_evade
if(y>room_height-sprite_height/2)
{
direction=90
}
if(y<sprite_height/2)
{
direction=270
}

if(hspeed>0)
{
vspeed=0
}
if(alive and state="attack" and abs(y-instance_find(obj_pikachu,0))>5)
{
move_towards_point(x,instance_find(obj_pikachu,0).y,speeed)
}


