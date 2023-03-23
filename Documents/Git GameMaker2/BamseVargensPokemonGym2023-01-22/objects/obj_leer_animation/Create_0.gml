enemyImageTransform = method(undefined,enemyRotateTransform)
event_inherited()
sound=sound_leer
start_xscale=image_xscale; start_yscale=image_yscale;
image_xscale=start_xscale/2; image_yscale=start_yscale/2;
image_xscale= !miss + 0.5*miss
event_inherited()
Xtranslation=sprite_get_width(spr_leer)
Ytranslation=sprite_get_height(spr_leer)