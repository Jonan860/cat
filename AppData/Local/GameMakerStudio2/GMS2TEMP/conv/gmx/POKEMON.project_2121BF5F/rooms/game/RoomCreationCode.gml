window_set_fullscreen(1)
randomize()
sound_global_volume(0.1)
draw_healthbar(400,400,500,500,100, c_black, c_red, c_green, 0, true, true);
instance_create(32,32,obj_mewtwo);
global.state="start";
global.bonus=0.25
global.n=choose(1,0)