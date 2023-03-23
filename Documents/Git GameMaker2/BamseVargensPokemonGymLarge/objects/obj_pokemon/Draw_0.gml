
if(asleep>0 and active){draw_sprite(spr_sleep,-1,x+sprite_width/2,y-sprite_height/2)}

if(self=global.amber.active_pokemon and audio_is_playing(sound_confused)){draw_sprite_ext(spr_amnesia,-1,x,y-sprite_height/2,1,1,0,c_black,1)}
