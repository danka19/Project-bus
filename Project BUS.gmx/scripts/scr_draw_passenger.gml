
 {
 var i,str;
 str='Test';
 for (i = 0; i < 10; i += 1)
  {
   if i = 0
   {str='Point_x= '+string(point_x);};
   if i = 1
   {str='Point_y= '+string(point_y)};
   if i = 2
   {str='Point_x2= '+string(point_x2)};
   if i = 3
   {str='Point_y2= '+string(point_y2)};
   if i = 4
   {str='Point_x3= '+string(point_x3)};
   if i = 5
   {str='Point_y3= '+string(point_y3)};
   if i = 6
   {str='Collision Line= '+string(collision_line(x,y,l_pointx,l_pointy,reg_collision,true,true))};
   if i = 7
   {str='Place_meeting= '+string(place_meeting(l_pointx+(4),l_pointy+(4),reg_collision))};
   if i = 8
   {str='AI_STAGE= '+string(ai_stage)};
 //  if i = 9
 //  {str='Imp= '+string(imp)};
    draw_text(12,12+(i*12),string(i)+". "+string(str));
  }
 }
