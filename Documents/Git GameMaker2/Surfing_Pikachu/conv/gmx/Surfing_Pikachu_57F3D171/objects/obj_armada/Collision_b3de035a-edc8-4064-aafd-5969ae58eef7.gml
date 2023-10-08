
if(alive and other.owner="pikachu")
{
HP=max(HP-1,0)
with(other)
{
owner=0
}
if(HP==0)
{
alive=0
rotate=choose(1,-1)
sprite_index=dead_sprite
}
}

