// [Function] execute_ex_set_directory(dir)
// [Description]
//  This function sets the working directory for programs
//  which is executed by execute_program_ex or execute_shell_ex.
//  Note that this setting take effect on all of subsequent calls of
//  execute_program_ex and execute_shell_ex.
//  When you want to reset the setting, use execute_ex_set_directory('').
// [Inputs]
//  argument0 : name of the working directory.
//      (If it is an empty string, the program inherits the current working directory.)
// [Example]
//  // This ensures that the program starts with having the directory it resides as the working directory.
//  execute_ex_set_directory(filename_directory(your_program));
//  execute_program_ex(your_program, '', false);
if (!variable_global_exists('__execute_ex_set_directory__')) {
    // function execute_ex_set_directory(dir: PChar): Double; stdcall;
    global.__execute_ex_set_directory__ = external_define('ExecuteEx.dll', 'execute_ex_set_directory', dll_stdcall, ty_real, 1, ty_string);
}
external_call(global.__execute_ex_set_directory__, argument0);
