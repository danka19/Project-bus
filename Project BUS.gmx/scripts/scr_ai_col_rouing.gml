


// ЕЁ ТОЖЕ НЕ ЗАБУДЬ ОБЪЯВИТЬ БОЛВАН
  if ai_stage = 1
   {
    if round(distance_to_point(ai_pointx,ai_pointy)) > 3
     {scr_ai_targeting2();};
    else 
     {
     ai_pointx = ai_pointx-(20);
     angle = round(point_direction(x,y,ai_pointx,ai_pointy));
     ai_stage = 2;
     };
   };
  if ai_stage = 2
   {
    if round(distance_to_point(ai_pointx,ai_pointy)) > 3
     {scr_ai_targeting2();};
    else 
     {ai_stage = 3;};
   };
