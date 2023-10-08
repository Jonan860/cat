if(global.player=="bebis")
{if(alive and other.m+other.n!=number)
{{with(other)
{
HP=max(0,HP-20*(1-damage_reduction))
}}
}
if(alive and other.m+other.n==number )
{with(other)
if(defence_bonus<=6)
{defence_bonus+=0.5
damage_reduction=(defence_bonus)/(defence_bonus+1)
}
else
{
HP=min(max_HP,HP+5)
}}
}

if(global.player=="nils")
{if(alive and other.m+other.n!=number)
{{with(other)
{
HP=max(0,HP-20*(1-damage_reduction))
}}
}
if(alive and other.m+other.n==number )
{with(other)
if(defence_bonus<=6)
{defence_bonus+=0.5
damage_reduction=(defence_bonus)/(defence_bonus+1)
}
else
{
HP=min(max_HP,HP+5)
}}
}


if(global.player=="ida")
{if(alive and other.number!=n*m )
{with(other)
{
HP=max(0,HP-20*(1-damage_reduction))
}
}
if(alive and other.number==n*m )
{with(other)
{
if(defence_bonus<=6)
{defence_bonus+=0.5
damage_reduction=(defence_bonus)/(defence_bonus+1)
}
else
{
HP=min(max_HP,HP+5)
}
}}
}
event_inherited()


