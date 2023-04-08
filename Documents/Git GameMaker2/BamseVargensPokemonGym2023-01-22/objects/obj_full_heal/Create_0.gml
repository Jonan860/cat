event_inherited()
name="Full heal"
price=350
draw_name=0
if(room=room_inventory and global.amber.fullHeal.count=0){instance_destroy()}

struct=global.amber.fullHeal