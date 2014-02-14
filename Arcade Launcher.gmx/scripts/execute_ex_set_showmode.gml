// [Function] execute_ex_set_showmode(mode)
// [Description]
//  This function sets the initial window state for programs
//  which is executed by execute_program_ex or execute_shell_ex.
//  Note that this setting take effect on all of subsequent calls of
//  execute_program_ex and execute_shell_ex.
//  When you want to reset the setting, use execute_ex_set_showmode(0).
// [Inputs]
//  argument0 : initial window state of the program; takes one of following values.
//      0 = normal
//      1 = maximized
//      2 = minimized
//      3 = hidden
// [Example]
//  // This opens a text file with a notepad maximized in the desktop.
//  execute_ex_set_showmode(2);
//  execute_shell_ex('ReadMe.txt', '', '', true);
if (!variable_global_exists('__execute_ex_set_showmode__')) {
    // function execute_ex_set_showmode(mode: Double): Double; stdcall;
    global.__execute_ex_set_showmode__ = external_define('ExecuteEx.dll', 'execute_ex_set_showmode', dll_stdcall, ty_real, 1, ty_real);
}
external_call(global.__execute_ex_set_showmode__, argument0);
