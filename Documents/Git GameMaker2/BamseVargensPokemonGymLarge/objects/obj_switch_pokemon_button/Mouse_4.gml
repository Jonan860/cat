if(global.phase=PHASES.choosing and global.turn=TURNS.Amber){
var i=0
if(!instance_exists(obj_starters_button)){
with(obj_pokemon){
if(!active and owner!=noone and owner==global.amber and alive and daycare==0){
switch (name){
case "Charmander": object=instance_create_depth(600,400+40*i,0,obj_charmander_button);break;
case "Squirtle": object=instance_create_depth(600,400+40*i,0,obj_squirtle_button);break;
case "Geodude": object=instance_create_depth(600,400+40*i,0,obj_geodude_button);break;
case "Bulbasaur": object=instance_create_depth(600,400+40*i,0,obj_bulbasaur_button);break;
case "Mewtwo": object=instance_create_depth(600,400+40*i,0,obj_mewtwo_button);break;
case "Pikachu": object=instance_create_depth(600,400+40*i,0,obj_pikachu_button);break;
}
object.object=self
i+=1
}
}
}

else with(obj_starters_button) instance_destroy()

}

