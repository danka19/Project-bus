

//  A I

// ENTRANCE
if !position_meeting(x, y, reg_entrance) && x>200
 {
 if rot != 360 - angle
  {
  if rot > 360 - angle
   {phy_rotation -=1};
  else 
   {phy_rotation +=1};
  };
 else
  {
  {physics_apply_local_impulse(0,0,15,0)};
  };
 };
 

// INSIDE BUS

else
 {
 if !position_meeting(x, y, reg_inside) && x>144
 {
 var inst,angle,rot;
 inst = instance_nearest(x,y,reg_inside);
 angle = round(point_direction(x,y,irandom_range(inst.x,(inst.x+sprite_width)),irandom_range(inst.y,(inst.y+sprite_height))));
 rot = round(phy_rotation);
 if rot != 360 - angle
  {
  if rot > 360 - angle
   if rot - (360 - angle) > 5
   {phy_rotation -=5};
   else 
   {phy_rotation -=1};
  else
   {
   if (360 - angle) - rot > 5
   {phy_rotation +=5};
   else 
   {phy_rotation +=1};
   };
  };
 else
  {
  {physics_apply_local_impulse(0,0,15,0)};
  };
 };
 };
