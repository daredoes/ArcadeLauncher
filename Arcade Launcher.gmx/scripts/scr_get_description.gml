///scr_get_description(path)
line = "";
nextLine = "a";
file = FS_file_text_open_read(argument0 + "\description.txt")
while(nextLine != "")
{
if(line != "")
{
    line += "#";
}
nextLine = string(FS_file_text_read_string(file));
FS_file_text_readln(file);
line += nextLine;
}
return line;
FS_file_text_close(argument0 + "\description.txt");
