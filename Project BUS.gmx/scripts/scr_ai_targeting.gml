

// 
   var ang_rot,rot180;
   
   ang_rot = 360 - angle;
   rot180 = rot + 180;
   
   if rot180 > 360
    {rot180 = rot180 - 360};
    
    if rot != ang_rot
     {
     
     if rot180 > ang_rot
     rot_dir=1
   
     
     if rot_dir=1
     if abs(rot - ang_rot) > 5
     {phy_rotation += 5}
     else 
     {phy_rotation += 1};
     
    else
     if abs(rot - ang_rot) > 5
           {phy_rotation -= 5}
          else 
           {phy_rotation -= 1};
     }
     
       else
      {physics_apply_local_impulse(0,0,5+force,0)};
     
     
     
     
     
     
     
/*    if rot180 != ang_rot
  
       
     if ang_rot<355
        {
          if abs(rot - ang_rot) > 5
           {phy_rotation -= 5}
          else 
           {phy_rotation -= 1};
         }
//      else
//       {phy_rotation-= 1}
//       };
      else
        {
//       if ang_rot > 5
//        {
          if abs(rot - ang_rot) > 5
           {phy_rotation+=5}
          else
           {phy_rotation+=1};
         }
//       else
//        {phy_rotation+=1};
//        };
      };
     else
      {phy_rotation+=(choose(-1,1));};
*/   
   
      
