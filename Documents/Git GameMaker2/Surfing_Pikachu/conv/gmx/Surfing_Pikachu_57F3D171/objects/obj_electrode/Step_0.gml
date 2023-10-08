attack=irandom(room_width/30)
if(armed and x>room_width/2 and attack==1)
{
if(instance_find(obj_pikachu,0).damage_reduction==0)
{
instance_create(x-sprite_width,y,obj_lightning)
}
else
{
instance_create(x-sprite_width,y,obj_screech)
}
armed=0
}

