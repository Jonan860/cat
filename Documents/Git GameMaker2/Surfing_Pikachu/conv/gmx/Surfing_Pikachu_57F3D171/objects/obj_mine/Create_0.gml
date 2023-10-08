alive=1
spr_index=0
armed=choose(0,1)
if(global.player="bebis")
{
k=choose(0,0,0,0,0,1)
if(k==0)
{for(i=0; i<4;i+=1)
{n=irandom(3)
m=irandom(3)
number=n+m
string_number=string(number);
if(number==instance_find(obj_pikachu,0).number) break;
}}
else if(k)
{number=instance_find(obj_pikachu,0).number
string_number=string(number);
}
}
if(global.player="nils")
{
k=choose(0,0,0,0,0,1)
if(k==0)
{for(i=0; i<4;i+=1)
{n=irandom(10)
m=irandom(10)
number=n+m
string_number=string(number);
if(number==instance_find(obj_pikachu,0).number) break;
}}
else if(k)
{number=instance_find(obj_pikachu,0).number
string_number=string(number);
}
}
if(global.player="ida")
{
for(i=0; i<4;i+=1)
{n=irandom(6)
m=irandom(6)
number=n*m
string_number=string(n)+"*"+string(m)
if(number==instance_find(obj_pikachu,0).number) break;
}}

