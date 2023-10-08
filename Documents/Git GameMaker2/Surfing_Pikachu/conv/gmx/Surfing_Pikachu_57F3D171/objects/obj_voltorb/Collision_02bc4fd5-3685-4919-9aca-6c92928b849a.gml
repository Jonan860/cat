if(global.player=="bebis")
{if(alive and other.m+other.n!=number)
{{with(other)
{
HP=max(0,HP-20)
}}
}
if(alive and other.m+other.n==number )
{with(other)
{
HP=min(max_HP,HP+20)
}}
}

if(global.player=="nils")
{if(alive and other.m+other.n!=number)
{{with(other)
{
HP=max(0,HP-20)
}}
}
if(alive and other.m+other.n==number )
{with(other)
{
HP=min(max_HP,HP+20)
}}
}


if(global.player=="ida")
{if(alive and other.number!=n*m )
{with(other)
{
HP=max(0,HP-20)
}
}
if(alive and other.number==n*m )
{with(other)
{
HP=min(max_HP,HP+20)
}}
}
event_inherited()


