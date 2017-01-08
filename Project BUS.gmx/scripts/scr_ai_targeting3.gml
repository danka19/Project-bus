

var ang_rot,rot180;
ang_rot = 360 - angle;
rot180 = rot + 180;
 if rot180 > 360
  {rot180 = rot180 - 360};

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
 {{physics_apply_local_impulse(0,0,force_low,0)};};
