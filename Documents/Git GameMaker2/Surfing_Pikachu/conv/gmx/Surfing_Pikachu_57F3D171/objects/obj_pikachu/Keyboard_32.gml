if(room!=room_bamse)
{
if(ammo>0 and loaded)
{
lightning=instance_create(x+sprite_width/2,y,obj_lightning)
with(lightning)
{
owner="pikachu"
image_angle=-225
speed=15
direction=0

}
loaded=0
ammo-=1
alarm[0]=room_speed*2
}
}

