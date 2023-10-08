if(room=Space)
{
if(global.armada==1 and instance_exists(obj_button_continue)==0)
{
cont=instance_create(x,y,obj_button_continue)
cont.x=room_width-cont.sprite_width/2
cont.y=cont.sprite_height/2
}
}
global.gui_w=display_get_gui_width();
global.gui_h= display_get_gui_height()


