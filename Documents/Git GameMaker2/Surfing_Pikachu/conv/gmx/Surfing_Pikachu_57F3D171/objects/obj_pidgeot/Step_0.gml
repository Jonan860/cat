event_inherited()
if(alive and state="attack" and abs(y-instance_find(obj_pikachu,0).y)<=5)
{
state="attackattack"
gust=10
speed=0
alarm[2]=room_speed/3
}


