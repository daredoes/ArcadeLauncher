///scr_get_game_details(path)
name = scr_get_name(argument0);
if(name != "")
{
description = scr_get_description(argument0);
sprite = scr_get_screenshot(argument0);
players = scr_get_players(argument0);
}

