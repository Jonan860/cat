event_inherited()
if(state=="attackattack")
vulnerable=1
if(alive and state="attack" and abs(y-instance_find(obj_pikachu,0).y)<=5)
{
state="attackattack"
night_shades=5
speed=0
instance_create(x-0.19*sprite_width,y-0.21*sprite_height,obj_hyperball)
alarm[2]=2*room_speed
}

