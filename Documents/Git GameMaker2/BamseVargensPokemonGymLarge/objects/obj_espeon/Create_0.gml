event_inherited()
//attacker är psybeam sandattack psych-up
max_HP=96
HP=96
type=ELEMENTALTYPES.psychic
damage=1.2
name="Espeon"
defence=1
max_action_bar=100
action_bar=0
alive=1
sandAttack=global.sandAttackStruct
confusion=global.confusion_struct
ds_list_add(movesList,sandAttack,confusion)


function scr_espeon_ai() {
if((instance_find(obj_amber,0)).active_pokemon.accuracy_bonus>-5 and sand_attack.pp>0){global.move=choose(MOVES.sandAttack,MOVES.sandAttack,MOVES.confusion)}
else{global.move=MOVES.confusion}
	
if(global.move=MOVES.sandAttack and global.phase!=PHASES.attack){sandAttack.scr_perform()}

if(global.move=MOVES.confusion and global.phase!=PHASES.attack){confusion.scr_perform()}
}