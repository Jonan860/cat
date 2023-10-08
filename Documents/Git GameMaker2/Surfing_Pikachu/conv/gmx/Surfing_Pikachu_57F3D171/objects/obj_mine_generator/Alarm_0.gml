if(global.thunder==1)
{
obj=choose(obj_voltorb,obj_voltorb,obj_electrode,obj_electrode,obj_koffing,obj_koffing,obj_graveler,obj_geodude)
}
else if(global.armada==1)
{
obj=choose(obj_fearow,obj_vaporeon,obj_moltres)
}

mine=instance_create(room_width+32,0,obj)
with(mine)
{
y=sprite_height+random(room_height-3/2*sprite_height)
spr_ind=choose(0,1)
direction=180
speed=10
}


