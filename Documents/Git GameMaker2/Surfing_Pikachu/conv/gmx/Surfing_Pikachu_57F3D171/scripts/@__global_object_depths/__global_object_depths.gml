// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 1; // obj_pikachu
global.__objectDepths[1] = 0; // obj_mine_generator
global.__objectDepths[2] = 0; // obj_voltorb
global.__objectDepths[3] = 0; // obj_mine
global.__objectDepths[4] = 0; // obj_koffing
global.__objectDepths[5] = 0; // obj_electrode
global.__objectDepths[6] = 0; // obj_graveler
global.__objectDepths[7] = 0; // obj_geodude
global.__objectDepths[8] = 0; // obj_pidgeot
global.__objectDepths[9] = 0; // obj_haunter
global.__objectDepths[10] = 0; // obj_boss
global.__objectDepths[11] = 0; // obj_dragonite
global.__objectDepths[12] = 0; // obj_leveler
global.__objectDepths[13] = 0; // obj_mini_flag
global.__objectDepths[14] = 0; // obj_projectile
global.__objectDepths[15] = 0; // obj_sonicboom
global.__objectDepths[16] = 0; // obj_smog
global.__objectDepths[17] = 0; // obj_rock_throw
global.__objectDepths[18] = 0; // obj_lightning
global.__objectDepths[19] = 0; // obj_screech
global.__objectDepths[20] = 0; // obj_drawer
global.__objectDepths[21] = 0; // obj_initiater
global.__objectDepths[22] = -1; // obj_hyperball
global.__objectDepths[23] = -1; // obj_hyperbeam
global.__objectDepths[24] = 0; // obj_vaporeon
global.__objectDepths[25] = 0; // obj_moltres
global.__objectDepths[26] = 0; // obj_fearow
global.__objectDepths[27] = 0; // obj_armada
global.__objectDepths[28] = 0; // obj_crying_pikachu
global.__objectDepths[29] = 0; // obj_star_wars_text
global.__objectDepths[30] = 0; // obj_outro_text
global.__objectDepths[31] = 0; // obj_poke_wars
global.__objectDepths[32] = 0; // obj_text_long_time_ago
global.__objectDepths[33] = 0; // obj_intro
global.__objectDepths[34] = 0; // obj_nils_button
global.__objectDepths[35] = 0; // object_ida_button
global.__objectDepths[36] = 0; // obj_bebis_button
global.__objectDepths[37] = 0; // obj_debugger
global.__objectDepths[38] = 0; // obj_vargens_pokemon_gym
global.__objectDepths[39] = 0; // obj_vargen
global.__objectDepths[40] = 0; // obj_button_continue
global.__objectDepths[41] = 0; // obj_manager
global.__objectDepths[42] = 0; // object_amber
global.__objectDepths[43] = 0; // obj_fors_ttning_f_ljer
global.__objectDepths[44] = 0; // obj_HP_box


global.__objectNames[0] = "obj_pikachu";
global.__objectNames[1] = "obj_mine_generator";
global.__objectNames[2] = "obj_voltorb";
global.__objectNames[3] = "obj_mine";
global.__objectNames[4] = "obj_koffing";
global.__objectNames[5] = "obj_electrode";
global.__objectNames[6] = "obj_graveler";
global.__objectNames[7] = "obj_geodude";
global.__objectNames[8] = "obj_pidgeot";
global.__objectNames[9] = "obj_haunter";
global.__objectNames[10] = "obj_boss";
global.__objectNames[11] = "obj_dragonite";
global.__objectNames[12] = "obj_leveler";
global.__objectNames[13] = "obj_mini_flag";
global.__objectNames[14] = "obj_projectile";
global.__objectNames[15] = "obj_sonicboom";
global.__objectNames[16] = "obj_smog";
global.__objectNames[17] = "obj_rock_throw";
global.__objectNames[18] = "obj_lightning";
global.__objectNames[19] = "obj_screech";
global.__objectNames[20] = "obj_drawer";
global.__objectNames[21] = "obj_initiater";
global.__objectNames[22] = "obj_hyperball";
global.__objectNames[23] = "obj_hyperbeam";
global.__objectNames[24] = "obj_vaporeon";
global.__objectNames[25] = "obj_moltres";
global.__objectNames[26] = "obj_fearow";
global.__objectNames[27] = "obj_armada";
global.__objectNames[28] = "obj_crying_pikachu";
global.__objectNames[29] = "obj_star_wars_text";
global.__objectNames[30] = "obj_outro_text";
global.__objectNames[31] = "obj_poke_wars";
global.__objectNames[32] = "obj_text_long_time_ago";
global.__objectNames[33] = "obj_intro";
global.__objectNames[34] = "obj_nils_button";
global.__objectNames[35] = "object_ida_button";
global.__objectNames[36] = "obj_bebis_button";
global.__objectNames[37] = "obj_debugger";
global.__objectNames[38] = "obj_vargens_pokemon_gym";
global.__objectNames[39] = "obj_vargen";
global.__objectNames[40] = "obj_button_continue";
global.__objectNames[41] = "obj_manager";
global.__objectNames[42] = "object_amber";
global.__objectNames[43] = "obj_fors_ttning_f_ljer";
global.__objectNames[44] = "obj_HP_box";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for