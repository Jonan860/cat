
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.electric
damage=1
name="Raichu"
defence=1
max_action_bar=100
action_bar=0
alive=1
sound=sound_snorlax
thunder=constructThunder()
thunderShock=constructThunderShock()
ds_list_add(movesList,thunder,thunderShock)
xstart=x; ystart=y;
scr_ai=method(undefined, scr_raichu_ai)