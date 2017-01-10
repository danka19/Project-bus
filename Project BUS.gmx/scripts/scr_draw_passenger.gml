
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
   {str='Phy_position_x= '+string(phy_position_x)};
   if i = 7
   {str='Phy_position_y= '+string(phy_position_y)};
   if i = 8
   {str='Phy_inertia= '+string(phy_inertia)};
 //  if i = 9
 //  {str='Imp= '+string(imp)};
    draw_text(12,12+(i*12),string(i)+". "+string(str));
  }
 }
