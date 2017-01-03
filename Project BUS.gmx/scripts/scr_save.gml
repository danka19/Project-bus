
var file;
if file_exists("save.ini")
    {
    file = file_text_open_read("save.ini");
    };
else
 {
  file = get_save_filename("screenshot|*.png", "");
 };
