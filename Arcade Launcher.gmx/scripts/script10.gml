///scr_get_players(path)
file = FS_file_text_open_read(argument0 + "\players.txt")
return string(FS_file_text_read_string(file));
FS_file_text_close(argument0 + "\players.txt");
