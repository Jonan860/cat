
if(global.player=="bebis")
{if(alive and other.m+other.n!=number)
{{with(other)
{
HP=max(0,HP-20*(1-damage_reduction))
}}
}
if(alive and other.m+other.n==number )
{with(other)
{
if(poison_count>0)
{
poison_count=0
}
else
HP=min(max_HP,HP+10)
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
{
if(poison_count>0)
{
poison_count=0
}
else
HP=min(max_HP,HP+10)
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
if(poison_count>0)
{
poison_count=0
}
else
HP=min(max_HP,HP+10)
}}

event_inherited()


