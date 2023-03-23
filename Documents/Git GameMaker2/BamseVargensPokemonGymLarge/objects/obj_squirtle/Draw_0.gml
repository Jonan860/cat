if(global.phase=="Amber defence_curl_hit2" or global.phase="Amber defence_curl_miss2"){sprite_index=spr_defence_curl}
else{sprite_index=spr_squirtle}
event_inherited()
  exit;  ///////// istället för att kommentera bort resten av koden
if active=1{
if (global.phase!="Amber defence_curl_hit2") {draw_self()}
if (global.phase=="Amber defence_curl_hit2"){draw_sprite(spr_defence_curl,0,x,y)}

HP_kvot=HP/max_HP*100
draw_text(x-420,y-190,string_hash_to_newline("Stats"))
draw_text(x-470,y-170,string_hash_to_newline("Defence Bonus:"+string(defence_bonus)))
draw_text(x-470,y-150,string_hash_to_newline("Attack Bonus:"+string(attack_bonus)))
draw_healthbar(x-80,y-180,x+80,y-200,HP_kvot, c_black, c_red, c_lime, 0, true, true);
draw_text(x+90,y-200,string_hash_to_newline("HP:"+string(HP)))
}
if(room=difficulty){draw_self()}
if(room==winner){1event_inherited()}

if (info and active){draw_sprite(info_bubble,0,x+sprite_width/8,y-sprite_get_height(info_bubble))}
//
