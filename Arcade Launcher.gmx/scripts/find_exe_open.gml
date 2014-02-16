///find_exe_open(path)
exe = file_find_first(argument0 + "\*.exe",0);
open_exe(argument0 + "\" + exe);
file_find_close();
