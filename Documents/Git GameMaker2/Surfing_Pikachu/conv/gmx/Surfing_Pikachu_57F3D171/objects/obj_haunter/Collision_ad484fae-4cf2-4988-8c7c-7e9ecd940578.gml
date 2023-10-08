if(other.owner=="pikachu" and vulnerable)
{
HP=HP-20
__background_set( e__BG.Index, 0, background_space )
alarm[2]=-1
state="evade"
direction=choose(90,270)
speed=speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[1]=room_height*3/speeed
vulnerable=0
}

