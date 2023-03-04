
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.psychic
damage=1
name="Drowsee"
defence=1
max_action_bar=100
action_bar=0
alive=1
sound=sound_snorlax
hypnosis=constructHypnosis()
dreamEater=constructDreamEater()
confusion=constructConfusion()
ds_list_add(movesList,hypnosis,dreamEater,confusion)
xstart=x; ystart=y;
scr_ai=method(undefined, scr_drowsee_ai)
