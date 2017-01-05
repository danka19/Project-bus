

if !place_meeting(x,y,inst)
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
