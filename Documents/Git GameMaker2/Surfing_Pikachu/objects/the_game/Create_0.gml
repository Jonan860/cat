global.background_music = sound_surfing_safari
global.gamePhase = -1
global.game = id

// Save Game Data
save = function() {
	ini_open("savegame.ini");
	with(global.pikachu) {
		ini_write_real("Pikachu", "HP", HP);
		ini_write_real("Pikachu", "ammo", ammo);
		ini_write_real("Pikachu", "damage_reduction", damage_reduction);
		ini_write_real("Pikachu", "defence_bonus", defence_bonus);
		ini_write_real("Pikachu", "poison_count", poison_count);
	}
	ini_write_real("global", "player", global.player);
	ini_write_real("", "previousGamePhase", global.gamePhase);
	show_debug_message("gamephase " + string(global.gamePhase) + " was saved")
	ini_close();
}

load = function() {
	if (file_exists("savegame.ini")) {
	    ini_open("savegame.ini");
		global.player = ini_read_real("global", "player", 0);
		initializeGlobalQuestionValues()
		global.pikachu = instance_create_depth(0, 0, 0, obj_pikachu)
		with(global.pikachu) {
		    HP = ini_read_real("Pikachu", "HP", 0);
			ammo = ini_read_real("Pikachu", "ammo", 0);
			damage_reduction = ini_read_real("Pikachu", "damage_reduction", 0);
			defence_bonus = ini_read_real("Pikachu", "defence_bonus", 0);
			poison_count = ini_read_real("Pikachu", "poison_count", 0);
		}
		    global.gamePhase = ini_read_real("", "previousGamePhase", 0);
			show_debug_message("gamephase " + string(global.gamePhase) + " was loaded")
			ini_close();
	}
}