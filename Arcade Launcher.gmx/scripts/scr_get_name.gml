///scr_get_name(path)
file = FS_file_text_open_read(argument0 + "\name.txt")
return string(FS_file_text_read_string(file));
FS_file_text_close(argument0 + "\name.txt");
