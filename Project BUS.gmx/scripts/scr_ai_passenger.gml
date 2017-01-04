

//  A I

// ENTRANCE
if !position_meeting(x, y, reg_entrance) && x>192
 {
 var inst,angle,rot;
 inst = instance_nearest(x,y,reg_entrance);
 angle = round(point_direction(x,y,inst.x,inst.y));
 rot = round(phy_rotation);
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
 var xpoint, ypoint, angle, rot;
// xpoint = irandom_range(144,168);
// ypoint = irandom_range(168,350);
 inst = instance_nearest(x,y,reg_inside);
 angle = point_direction(x,y,inst.x,inst.y);
 rot = round(phy_rotation);
   if rot != 360 - angle
    {
    if rot > 360 - angle
     {phy_rotation -=1};
    else 
     {phy_rotation +=1};
    };
   else
    {physics_apply_local_impulse(0,0,5,0)};
 };
