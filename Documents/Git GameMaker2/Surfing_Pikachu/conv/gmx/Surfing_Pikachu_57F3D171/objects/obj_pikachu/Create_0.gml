if(room==room_bamse)
{
path_start(path_pikachu,path_get_length(path_pikachu)/(35*room_speed),path_action_stop,true)
audio_play_sound(sound_greetings_swordsman,0,0)
}
else if(room!=room_bamse)
{xdir=0
ydir=0
HP=real(global.HP_box)
max_HP=real(global.HP_box)
ammo=0
loaded=1
damage_reduction=0
defence_bonus=0
distance=0
poison_count=0
if(global.player="bebis")
{n=irandom(3)
m=irandom(3)
number=n+m
string_number=string(n)+"+"+string(m)
}
if(global.player="nils")
{n=irandom(10)
m=irandom(10)
number=n+m
string_number=string(n)+"+"+string(m)
}
if(global.player="ida")
{
n=irandom(6)
m=irandom(6)
number=n*m
string_number=string(number)
}
}


