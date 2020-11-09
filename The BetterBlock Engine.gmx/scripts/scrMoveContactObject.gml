///scrMoveContactObject(xMovement,yMovement,maxMovement,id)
t_xamt = argument[0]; //values greater than 1 may leave the moved instance a number of pixels away from the target instance. This distance will always be less than the value of t_xamt.
t_yamt = argument[1]; //values greater than 1 may leave the moved instance a number of pixels away from the target instance. This distance will always be less than the value of t_yamt.
t_limit = argument[2];
t_target = argument[3];

if (t_limit < 0) //prevent negative limits from causing backwards movement
    return noone;

for (var i = 0; i <= ceil(t_limit); i += 1) {
    if (place_meeting(x+t_xamt*i, y+t_yamt*i, t_target)) {
        var t_col = instance_place(x+t_xamt*i, y+t_yamt*i, t_target);
        if (i > 0){ //if i is 0, the instance running the code was already in "id"
            x += t_xamt*(i-1);
            y += t_yamt*(i-1);
        }
        return t_col;
    }
}
//Did not collide, so move the full distance 
x += t_xamt*t_limit;
y += t_yamt*t_limit;
return noone;
