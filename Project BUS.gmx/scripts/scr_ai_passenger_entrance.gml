

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
   {
<<<<<<< HEAD
//
//   if !place_meeting(x,y,inst)
//
   if round(point_distance(x,y,point_x,point_y)) >= 10
     {scr_ai_targeting2()};
   else
     {inst = inst2; angle = round(point_direction(x,y,point_x2,point_y2));stage = 2;};
   };
=======
   
   if !place_meeting(x,y,inst)
     {scr_ai_targeting()};
   else
     {stage = 2; inst = inst2; angle = angle2; rot_dir=0;};
     
   };

>>>>>>> origin/master
// STAGE 2
  if stage = 2
//
    {
//
//    if !place_meeting(x,y,inst)
//
    if round(point_distance(x,y,point_x2,point_y2)) >= 10
     {scr_ai_targeting2()};
    else
     {inst = id_love_seat; angle = round(point_direction(x,y,inst.x+((sprite_width/2)-1),inst.y+(sprite_height/2))); stage = 3;};
    };
// STAGE 3
  if stage = 3
    {if round(point_distance(x,y,inst.x+((sprite_width/2)-1),inst.y+(sprite_height/2))) < 50
      {if inst.free = 1
       {if round(point_distance(x,y,inst.x+((sprite_width/2)-1),inst.y+(sprite_height/2))) < 10
         {
          if round(point_distance(x,y,inst.x+((sprite_width/2)-1),inst.y+(sprite_height/2))) < 5
           {inst.free = 0; stage = 4;};
          else
           {scr_ai_targeting3()};
         };
        else
         {scr_ai_targeting2()};
       };
       else
        {next_seat+=1;
          if next_seat = love_seat
           {return 0};
          if next_seat > global.seats
           {next_seat=1;};
        };
      };
    else
     {scr_ai_targeting2();};
    };
