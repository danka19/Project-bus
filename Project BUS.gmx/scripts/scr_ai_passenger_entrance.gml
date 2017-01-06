

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
//
//   if !place_meeting(x,y,inst)
//
   if round(point_distance(x,y,point_x,point_y)) >= 10
     {scr_ai_targeting2()};
   else
     {inst = inst2; angle = round(point_direction(x,y,point_x2,point_y2));stage = 2;};
   };
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
   !/  {inst = love_seat; angle = round(point_direction(x,y,inst.x+((sprite_width/2)-1),inst.y+(sprite_height/2))); stage = 3;};
   // love_seat выдаёт число или порядковый номер сидения, а не его id
   // Скопировать или сохранить его id под переменной, чтобы потом найти его
   // И присвоить ему переменную inst
    };
// STAGE 3
  if stage = 3
    {
     if point_distance(x,y,inst.x+((sprite_width/2)-1),inst.y+(sprite_height/2)) < 50
      {if inst.free = 1
       {physics_apply_local_impulse(0,0,5+force,0)};};
       else
        {};
