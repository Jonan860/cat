
event_inherited()
max_HP=120
HP=120
type=ELEMENTALTYPES.normal
damage=1
name="Raticate"
defence=1
max_action_bar=100
action_bar=0
alive=1
sound=sound_snorlax
xstart=x
ystart=y
superFang=constructSuperFang()
tailWhip=constructTailWhip()
ds_list_add(movesList,superFang,tailWhip)
scr_ai= method(undefined, scr_raticate_ai)