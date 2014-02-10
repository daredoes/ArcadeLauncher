///scr_get_description(path)
file = FS_file_text_open_read(argument0 + "\description.txt")
return string(FS_file_text_read_string(file));
FS_file_text_close(argument0 + "\description.txt");
