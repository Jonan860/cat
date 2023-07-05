// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_unit
global.__objectDepths[1] = 0; // obj_charmander
global.__objectDepths[2] = 0; // obj_squirtle
global.__objectDepths[3] = 0; // obj_bulbasaur
global.__objectDepths[4] = 0; // obj_attack_tail_whip
global.__objectDepths[5] = 0; // obj_mewtwo
global.__objectDepths[6] = 0; // obj_switch
global.__objectDepths[7] = 0; // obj_charmander_button
global.__objectDepths[8] = 0; // obj_squirtle_button
global.__objectDepths[9] = 0; // obj_bulbasaur_button
global.__objectDepths[10] = 0; // obj_ember_button
global.__objectDepths[11] = 0; // obj_move_button
global.__objectDepths[12] = 0; // object12
global.__objectDepths[13] = 0; // obj_tackle_button
global.__objectDepths[14] = 0; // obj_bubble_button
global.__objectDepths[15] = 0; // obj_wine_whip_button
global.__objectDepths[16] = 0; // obj_starters
global.__objectDepths[17] = 0; // obj_starters_button
global.__objectDepths[18] = 0; // obj_defence_curl_button
global.__objectDepths[19] = 0; // obj_damage_button
global.__objectDepths[20] = 0; // obj_growl_button
global.__objectDepths[21] = 0; // manager
global.__objectDepths[22] = -1; // obj_ember
global.__objectDepths[23] = 0; // obj_bubble
global.__objectDepths[24] = 0; // obj_vine_whip
global.__objectDepths[25] = -1; // obj_growl
global.__objectDepths[26] = 0; // obj_tail_whip
global.__objectDepths[27] = 0; // obj_defence_curl
global.__objectDepths[28] = 0; // obj_win_girl
global.__objectDepths[29] = -10; // obj_poke_ball
global.__objectDepths[30] = 0; // obj_poke_ball_button
global.__objectDepths[31] = 0; // obj_psy_cutter
global.__objectDepths[32] = 0; // object32
global.__objectDepths[33] = 0; // obj_manager_fullscreen
global.__objectDepths[34] = 0; // obj_manual


global.__objectNames[0] = "obj_unit";
global.__objectNames[1] = "obj_charmander";
global.__objectNames[2] = "obj_squirtle";
global.__objectNames[3] = "obj_bulbasaur";
global.__objectNames[4] = "obj_attack_tail_whip";
global.__objectNames[5] = "obj_mewtwo";
global.__objectNames[6] = "obj_switch";
global.__objectNames[7] = "obj_charmander_button";
global.__objectNames[8] = "obj_squirtle_button";
global.__objectNames[9] = "obj_bulbasaur_button";
global.__objectNames[10] = "obj_ember_button";
global.__objectNames[11] = "obj_move_button";
global.__objectNames[12] = "object12";
global.__objectNames[13] = "obj_tackle_button";
global.__objectNames[14] = "obj_bubble_button";
global.__objectNames[15] = "obj_wine_whip_button";
global.__objectNames[16] = "obj_starters";
global.__objectNames[17] = "obj_starters_button";
global.__objectNames[18] = "obj_defence_curl_button";
global.__objectNames[19] = "obj_damage_button";
global.__objectNames[20] = "obj_growl_button";
global.__objectNames[21] = "manager";
global.__objectNames[22] = "obj_ember";
global.__objectNames[23] = "obj_bubble";
global.__objectNames[24] = "obj_vine_whip";
global.__objectNames[25] = "obj_growl";
global.__objectNames[26] = "obj_tail_whip";
global.__objectNames[27] = "obj_defence_curl";
global.__objectNames[28] = "obj_win_girl";
global.__objectNames[29] = "obj_poke_ball";
global.__objectNames[30] = "obj_poke_ball_button";
global.__objectNames[31] = "obj_psy_cutter";
global.__objectNames[32] = "object32";
global.__objectNames[33] = "obj_manager_fullscreen";
global.__objectNames[34] = "obj_manual";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for