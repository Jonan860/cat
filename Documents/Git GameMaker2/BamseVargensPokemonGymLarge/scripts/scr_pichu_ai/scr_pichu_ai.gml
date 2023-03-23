function scr_pichu_ai() {
	action_bar+=max_action_bar
	var target=getTarget()
	if(target.attack_bonus>-5 and charm.pp>0){charm.perform()}
	else{thunderShock.scr_start()}
}
