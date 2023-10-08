with(other)
{
if(owner=="pikachu")
alarm[0]=room_speed*0.02
}
pikachu=instance_find(obj_pikachu,0)
if(other.owner=="pikachu")
{
if(global.player="bebis")
{
if(alive and (pikachu.m + pikachu.n)!=number)
{
sprite_index=choose(spr_selfdestruct1,spr_selfdestruct2,spr_selfdestruct3)
pikachu.n=irandom(3)
pikachu.m=irandom(3)
pikachu.number=pikachu.m+pikachu.n
pikachu.string_number=string(instance_find(obj_pikachu,0).m)+"+"+string(instance_find(obj_pikachu,0).n)
alive=0


}
else if(alive and (pikachu.m + pikachu.n)==number)
{
sprite_index=spr_ditto
image_xscale=1
image_yscale=1
alive=0
//alarm[0]=room_speed/2
}
}
if(global.player="nils")
{
if(alive and (pikachu.m + pikachu.n)!=number)
{
sprite_index=choose(spr_selfdestruct1,spr_selfdestruct2,spr_selfdestruct3)
pikachu.n=irandom(10)
pikachu.m=irandom(10)
pikachu.number=pikachu.m+pikachu.n
pikachu.string_number=string(instance_find(obj_pikachu,0).m)+"+"+string(instance_find(obj_pikachu,0).n)
alive=0


}
else if(alive and (pikachu.m + pikachu.n)==number)
{
sprite_index=spr_ditto
image_xscale=1
image_yscale=1
alive=0
//alarm[0]=room_speed/2
}
}

if(global.player="ida")
{
if(alive and m*n!=pikachu.number)
{

alive=0
pikachu.n=irandom(6)
pikachu.m=irandom(6)
pikachu.number=pikachu.m*pikachu.n
pikachu.string_number=string(pikachu.number)

sprite_index=choose(spr_selfdestruct1,spr_selfdestruct2,spr_selfdestruct3)
}
else if(alive and m*n==pikachu.number)
{
sprite_index=spr_ditto
image_xscale=1
image_yscale=1
alive=0
//alarm[0]=room_speed/2
}
}

}

