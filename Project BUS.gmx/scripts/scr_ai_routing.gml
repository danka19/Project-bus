/*

if collision_line(x,y,l_pointx,l_pointy,reg_collision,true,true) != -4
 {
  ai_col = collision_line(x,y,l_pointx,l_pointy,reg_collision,true,true);
  if ai_col.x < x
   {
    ai_point1 = place_meeting(l_pointx+(4),l_pointy+(4),reg_collision);
    ai_pointy1 = place_meeting(l_pointx+(4),l_pointy+(4),reg_collision);
    ai_pointy2 = place_meeting(l_pointx+(4),l_pointy+(4),reg_collision);
// Point 1 (upside)
   var ai_iy1;
   ai_iy1=1;
    while ai_pointy1 != 0
     {
      ai_pointy1 = place_meeting((l_pointx+(4)),ai_pointy1+(l_pointy+(4)),reg_collision);
      ai_pointy1-=1;
     };
// Point 2 (downside)
   var ai_iy2;
   ai_iy2=1;
    while ai_pointy2 != 0
     {
      ai_pointy2 = place_meeting((l_pointx+(4)),ai_pointy2+(l_pointy+(4)),reg_collision);
      ai_pointy2+=1;
     };
// Check which point is near
   if distance_to_point(ai_pointy1,l_pointy+(4)) < distance_to_point(ai_pointy2,l_pointy+(4))
    {
// If it fits, go. Else check further.
     if place_meeting(l_pointx+(4),ai_pointy1-10,reg_entrance) != 0
      {
       ai_pointy1 = ai_pointy1-10;
       var ai_iy1;
       ai_iy1=1;
       while ai_pointy1 != 0
        {
         ai_pointy1 = place_meeting((l_pointx+(4)),ai_pointy1-(l_pointy+(4)),reg_collision);
         ai_pointy1-=1;
        };
      };
     else
      {
// Походу паря без ещё одной переменной не обойтись
       ai_pointx = (l_pointx+(4))+(10);
       ai_pointy1= ai_pointy1-10;
       angle = round(point_direction(x,y,ai_pointx,ai_pointy));
// TUT SCRIPT AHA
       ai_stage = 1;
      };
    };
   };
  else
   {
   };
/*
  if ai_col.y > y
  {
  
  };
  else
  {
  };

 };*/
