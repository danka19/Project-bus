

// Entrance in transport will be in 4 stages
// Each stage will refer passenger behaviour

// So...

// STAGE 1

// Entrance condition
 if keyboard_check_pressed(vk_space)
  {stage = 1};
  
// Staging
  if stage = 1
// 
   if !place_meeting(x,y,reg_entrance)
    {
     if rot != 360-angle
      {
       if rot + 180 > 360
        {rot = (rot + 180 ) -360};
       if angle < 360 - (rot + 180)
        {if rot - (360 - angle) > 5
         {phy_rotation -=5};
         else
         {phy_rotation -=1};};
       else
        {if (360 - angle) - rot > 5
         {phy_rotation +=5};
         else
         {phy_rotation +=1};};
      };
     else
      {{physics_apply_local_impulse(0,0,5+force,0)};};
    };
   else
    {stage = 2;};
    
   
//   
