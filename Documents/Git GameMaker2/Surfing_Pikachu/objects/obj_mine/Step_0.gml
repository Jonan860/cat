var attack = irandom(room_width/(speed * 3))
if(armed and x > room_width/2 and attack == 1) {
	instance_create_depth(x - sprite_width, y, 0, projectile, {owner : id})
	armed = 0
}

