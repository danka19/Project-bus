

if distance_to_object(obj_passenger) < 2
 { 
 var col_inst, col_angle, col_ang_rot;
     col_inst = instance_nearest(x,y,obj_passenger);;
     col_angle = point_direction(x,y,col_inst.x,col_inst.y);
     col_ang_rot = 360 - col_angle;

// ACTION

    if (col_ang_rot) > 45 && (col_ang_rot <=135)
     {physics_apply_local_impulse(0,0,0,-(force+random_force))};
    if (col_ang_rot) > 135 && (col_ang_rot <=225)
     {physics_apply_local_impulse(0,0,-(force+random_force),0)};
    if (col_ang_rot > 225) && (col_ang_rot <=315)
     {physics_apply_local_impulse(0,0,0,(force+random_force))};
    if col_ang_rot > 315 or col_ang_rot <=45
     {physics_apply_local_impulse(0,0,(force+random_force),0)};
 };
 
