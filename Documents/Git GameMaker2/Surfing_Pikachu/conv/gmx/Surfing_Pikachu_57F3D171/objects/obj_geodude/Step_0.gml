attack=irandom(room_width/30)
if(armed and x>room_width/2 and attack=1)
{instance_create(x-sprite_width,y,obj_rock_throw)
armed=0}

