

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
 var inst,angle;
 inst = instance_nearest(x,y,obj_seat);
 angle = round(point_direction(x,y,inst.x+11,inst.y+12));
 rot = round(phy_rotation);
 if inst.free = 1
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
    if position_meeting(x,y,obj_seat)
     {inst_free=0;
      instance_create(inst.x,inst.y,obj_passenger_seat);
      instance_destroy();
     };
    else
    {
    var sp
    sp = irandom(5)
    physics_apply_local_impulse(0,0,5+sp,0)};
    };
   };
 else
  {};
 };
