
draw_self();
if(sell!=noone){
	draw_sprite(spr_speech_bubble,0,x-328,y-64)
	draw_text_color(x-328,y,"Vill du salja "+sell.txt+"for"+string(floor(sell.price/2))+"riksdaler"+"?",c_black,c_black,c_black,c_black,1)
}

if(buy!=noone){
draw_sprite(spr_speech_bubble,0,x-328,y-64)
	draw_text_color(x-328,y,"Vill du kopa "+buy.name+"for"+string(floor(buy.price))+"riksdaler"+"?",c_black,c_black,c_black,c_black,1)
}
if(cant_buy!=noone){
draw_sprite(spr_speech_bubble,0,x-328,y-64)
	draw_text_color(x-328,y,"Du har inte rad att kopa "+cant_buy,c_black,c_black,c_black,c_black,1)
}

if(room=room_shop){draw_text_color(0,y+300,"Pengar="+string(global.amber.money),c_green,c_green,c_black,c_green,1)}