
event_inherited()
name="Burn heal"
price=200
if(room=room_inventory){
if(global.amber.burnHeal.count=0){instance_destroy()}
}

struct=global.amber.burnHeal