///scr_get_screenshot(path)
spritePath = file_find_first(argument0 + "\*.png",0);
sprite = sprite_add(argument0 + "\" + spritePath,1,0,0,0,0);
file_find_close();
return sprite;

