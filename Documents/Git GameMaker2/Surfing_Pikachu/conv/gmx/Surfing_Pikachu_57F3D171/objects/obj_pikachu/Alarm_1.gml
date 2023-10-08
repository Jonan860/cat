if(room!=room_bamse)
{
lightning=instance_create(x+sprite_width/2,y,obj_lightning)
with(lightning)
{
if(audio_is_playing(sound_lightning))
{audio_stop_sound(sound_lightning)}
owner="pikachu"
speed=15
direction=-60+irandom(120)
image_angle=direction-180-45
}
if(audio_is_playing(sound_pikadrop))
alarm[1]=room_speed/10
}

