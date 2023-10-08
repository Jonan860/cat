
if(global.level==0 and global.boss==0)
{
if(audio_is_playing(sound_surfing_safari)==0)
{audio_play_sound(sound_surfing_safari,0,0)
global.boss=1
}
}
if(global.level==0 and global.boss==1 and audio_is_playing(sound_surfing_safari)==0)
{
if(instance_exists(obj_pidgeot)==0)
{instance_create(room_width+225/2,room_height/2,obj_pidgeot)}
if(audio_is_playing(sound_bird)==0)
audio_play_sound(sound_bird,0,0)
}
if(global.level==1 and global.boss=0)
{if(audio_is_playing(sound_wipeout)==0)
{audio_play_sound(sound_wipeout,0,0)
global.boss=1}
}
if(global.level==1 and global.boss==1 and audio_is_playing(sound_wipeout)==0)
{
if(instance_exists(obj_haunter)==0)
{instance_create(room_width+154,room_height/2,obj_haunter)}
if(audio_is_playing(sound_sylar)==0)
audio_play_sound(sound_sylar,0,0)
}
if(global.level==2 and global.boss==0 and audio_is_playing(sound_sylar)==0)
{
audio_play_sound(sound_miserlou,0,0)
global.boss=1
}
if(global.level==2 and global.boss==1 and audio_is_playing(sound_miserlou)==0)
{
if(instance_exists(obj_dragonite)==0)
{instance_create(room_width+154,room_height/2,obj_dragonite)}
if(audio_is_playing(sound_dragonborn)==0)
audio_play_sound(sound_dragonborn,0,0)
}
if(global.level==3 and global.boss==0 and audio_is_playing(sound_dragonborn)==0)
{
if(audio_is_playing(sound_thunderthunder)==0 and global.thunder==1)
{audio_play_sound(sound_thunderthunder,0,0)
global.thunder=0
}
if(audio_is_playing(sound_thunderthunder)==0 and global.thunder==0)
{
if(audio_is_playing(sound_pikadrop)==0)
{
audio_play_sound(sound_pikadrop,0,0)
global.armada=1
}
}
}



