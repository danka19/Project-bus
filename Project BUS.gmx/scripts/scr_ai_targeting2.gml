

var ang_rot,rot180;
ang_rot = 360 - angle;
rot180 = rot + 180;
 if rot180 > 360
  {rot180 = rot180 - 360};
 
// COLLISION
if distance_to_object(obj_passenger) < 1
{ 
 var col_inst, col_angle, col_ang_rot;
     col_inst = instance_nearest(x,y,obj_passenger);;
     col_angle = point_direction(x,y,col_inst.x,col_inst.y);
     col_ang_rot = 360 - col_angle;

// COLLISION ACTION

    if (col_ang_rot) > 45 && (col_ang_rot <=135)
     {physics_apply_local_impulse(0,0,0,-(force+random_force))};
    if (col_ang_rot) > 135 && (col_ang_rot <=225)
     {physics_apply_local_impulse(0,0,-(force+random_force),0)};
    if (col_ang_rot > 225) && (col_ang_rot <=315)
     {physics_apply_local_impulse(0,0,0,(force+random_force))};
    if col_ang_rot > 315 or col_ang_rot <=45
     {physics_apply_local_impulse(0,0,(force+random_force),0)};
// COLLISION END
};
else
{
if rot != ang_rot
 { 
 if rot180 != ang_rot
  {
// A N G L I N G
 if ang_rot < 180
  {
   if rot <= 180
    {
     if ang_rot < rot
      {if abs(rot - ang_rot) > 5
         {phy_rotation -=angular_force};
         else
         {phy_rotation -=angular_force_low};};
     else
      {if ang_rot - rot > 5
         {phy_rotation +=angular_force};
         else
         {phy_rotation +=angular_force_low};};
    };
   if rot180 < 180
    {
     if ang_rot < rot180
      {if abs(ang_rot - rot) > 5
         {phy_rotation +=angular_force};
         else
         {phy_rotation +=angular_force_low};};
     else
      {if abs(rot - ang_rot) > 5
         {phy_rotation -=angular_force};
         else
         {phy_rotation -=angular_force_low};};
    };
  }
 else
  {
   if rot > 180
    {
     if ang_rot < rot
      {if abs(rot - ang_rot) > 5
         {phy_rotation -=angular_force};
         else
         {phy_rotation -=angular_force_low};};
     else
      {if ang_rot - rot > 5
         {phy_rotation +=angular_force};
         else
         {phy_rotation +=angular_force_low};};
    };
   if rot180 >= 180
    {
     if ang_rot < rot180
      {if ang_rot - rot > 5
         {phy_rotation +=angular_force};
         else
         {phy_rotation +=angular_force_low};};
     else
      {if abs(rot - ang_rot) > 5
         {phy_rotation -=angular_force};
         else
         {phy_rotation -=angular_force_low};};
    };
  };
 };
 else
  {{phy_rotation+=(choose(-1,1));};};
 };
  
else
 {{physics_apply_local_impulse(0,0,force+random_force,0)};};
};
