if(global.player="bebis")
{
if(alive and (other.m + other.n)!=number)
{
sprite_index=choose(spr_selfdestruct1,spr_selfdestruct2,spr_selfdestruct3)
image_xscale*=3
image_yscale*=3
alive=0
alarm[0]=room_speed/2
}
else if(alive and (other.m + other.n)==number)
{
other.n=irandom(3)
other.m=irandom(3)
other.number=other.m+other.n
other.string_number=string(other.m)+"+"+string(other.n)
sprite_index=spr_ditto
image_xscale=1
image_yscale=1
alive=0
}
}

if(global.player="nils")
{
if(alive and (other.m + other.n)!=number)
{
sprite_index=choose(spr_selfdestruct1,spr_selfdestruct2,spr_selfdestruct3)
image_xscale*=3
image_yscale*=3
alive=0
alarm[0]=room_speed/2
}
else if(alive and (other.m + other.n)==number)
{
other.n=irandom(10)
other.m=irandom(10)
other.number=other.m+other.n
other.string_number=string(other.m)+"+"+string(other.n)
sprite_index=spr_ditto
image_xscale=1
image_yscale=1
alive=0
}
}

if(global.player="ida")
{
if(alive and m*n!=other.number)
{
sprite_index=choose(spr_selfdestruct1,spr_selfdestruct2,spr_selfdestruct3)
image_xscale*=3
image_yscale*=3
alive=0
alarm[0]=room_speed/2
}
else if(alive and m*n==other.number)
{
sprite_index=spr_ditto
image_xscale=1
image_yscale=1
alive=0
other.n=irandom(6)
other.m=irandom(6)
other.number=other.m*other.n
other.string_number=string(other.number)
}
}

