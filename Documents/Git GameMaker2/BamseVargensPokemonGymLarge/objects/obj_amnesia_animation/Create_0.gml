age=0
path_start(path_amnesia,3,path_action_stop,0)
x_start=x; y_start=y;
number=0
with(obj_amnesia){
if(self!=other){other.number=max(other.number,number)}
}
number+=1

