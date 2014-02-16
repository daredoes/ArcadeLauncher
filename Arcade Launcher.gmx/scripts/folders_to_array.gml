folders[0] = "";
i = 0;
folderName = file_find_first(mainPath + "\*",fa_directory);
lastFolder = "";
while(folderName != "")
{
    if(directory_exists(mainPath + "\" + folderName))
    {
        folders[i] = folderName;
        folderName = file_find_next();
        i++;
    }
    else
    {
        folderName = file_find_next();
    }
}
file_find_close();
