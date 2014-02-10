///scr_get_name(path)
file = FS_file_text_open_read(argument0 + "\name.txt")
return FS_file_text_readln(file);
FS_file_text_close(argument0 + "\name.txt");
