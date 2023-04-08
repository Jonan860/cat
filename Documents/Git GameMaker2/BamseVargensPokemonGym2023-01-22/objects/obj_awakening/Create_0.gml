event_inherited()
name="Awakening"
price=200
if(room=room_inventory and global.amber.awakening.count=0){instance_destroy()}
struct=global.amber.awakening
