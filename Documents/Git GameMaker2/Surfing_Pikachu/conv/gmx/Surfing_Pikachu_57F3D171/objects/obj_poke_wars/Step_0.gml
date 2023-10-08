event_inherited()
text_speed+=2/room_speed
timer2+=text_speed2
if(timer>room_speed*10*text_speed2 and instance_exists(obj_star_wars_text)==0)
{
instance_create(x,y,obj_star_wars_text)
}
var t_star=(timer)
var zz = start_text[3]+t_star*direction_text[3]
if(zz>room_height*10)
{
instance_destroy()
}

