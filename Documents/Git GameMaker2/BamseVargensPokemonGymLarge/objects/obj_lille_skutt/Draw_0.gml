switch(room){
case game: {if (active=1) {draw_self()}; exit;}
case winner: {
draw_sprite(spr_crying_lille_skutt,0,x,y)
 exit;
 }
case difficulty: {
draw_self()
; exit;
}
}