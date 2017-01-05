

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
   if !place_meeting(x,y,inst)
     {scr_ai_targeting()};
   else
     {stage = 2;inst = inst2;angle = angle2;};
   };
/*
// STAGE 2
  if stage = 2
//
    {
    if !place_meeting(x,y,inst)
     {scr_ai_targeting()};
    else
     {stage = 3;};
    };
