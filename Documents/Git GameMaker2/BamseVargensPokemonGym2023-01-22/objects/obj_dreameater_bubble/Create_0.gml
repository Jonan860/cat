var isAmbersTurn=global.turn==TURNS.Amber
var ownerowner=global.enemy*!isAmbersTurn+global.amber*isAmbersTurn
owner=ownerowner.active_pokemon
move_towards_point(owner.x,owner.y-owner.sprite_height/4+32*random(1),8)