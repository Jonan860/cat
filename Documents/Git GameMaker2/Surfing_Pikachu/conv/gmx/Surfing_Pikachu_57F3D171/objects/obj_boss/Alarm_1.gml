if(state=="evade")
{
state="attack"
}
else if(state=="attack" and hspeed==0)
{
state="evade"
direction=choose(90,270)
alarm[0]=(200+irandom(room_height-200))/speeed
alarm[1]=room_height*3/speeed
}

