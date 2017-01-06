

var ang_rot,rot180;
ang_rot = 360 - angle;
rot180 = rot + 180;
 if rot180 > 360
  {rot180 = rot180 - 360};
// A N G L I N G
 if ang_rot < 180
  {
   if rot < 180
    {
     scr_ang_rot();
    };
   if rot180 < 180
    {
     scr_ang_rot180();
    };
  }
 else
  {
   if rot > 180
    {
     scr_ang_rot();
    };
   if rot180 > 180
    {
     scr_ang_rot180();
    };
  };
