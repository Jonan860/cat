event_inherited()
//attacker är psybeam amnesia          batton-pass genom levling
max_HP=120
HP=120
type=ELEMENTALTYPES.psychic
damage=1
name="Mew"
defence=1
max_action_bar=100
action_bar=0
alive=1
amnesia=constructAmnesia()
psyCutter=constructPsyCutter()
ds_list_add(movesList,amnesia,psyCutter)

sound=sound_snorlax
scr_ai = method(undefined, scr_mew_ai)


