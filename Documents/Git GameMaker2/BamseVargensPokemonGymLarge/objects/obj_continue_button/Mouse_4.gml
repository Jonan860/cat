/// @description Insert description here
// You can write your code in this editor
if(global.phase="jansson defeat")
{
	//global.phase="world"
	with(obj_jansson)
	{
	x=lastroom_x
	y=lastroom_y
	}
scr_goto_room(jansson_husmus_gym)
}
if(global.phase="husmusen defeat")
{
	//global.phase="world"
	with(obj_husmusen)
	{
	x=lastroom_x
	y=lastroom_y
	}
	
scr_goto_room(jansson_husmus_gym)
}

if(global.phase="teddy defeat")
{
	//global.phase="world"
	with(obj_teddy)
	{
	x=lastroom_x
	y=lastroom_y
	}
	
scr_goto_room(room_win)
}

if(global.phase="Amber defeated")
{
scr_goto_room(global.last_room)	

}


instance_destroy()