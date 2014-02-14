// [Function] execute_shell_ex(prog, arg, verb)
// [Description] executes a specified program or file in the shell.
// [Inputs]
//  argument0 : path to the program to exexute.
//  argument1 : arguments to the program.
//  argument2 : specify a verb to open the file, e.g. "open", "print", "property" etc.
// [Return value]
//  Returns true (1) when the programm successfully started,
//  otherwise returns false (0)
// (you can get the cause of the error with execute_ex_get_error.)
//  [Example]
//  execute_shell_ex('ReadMe.txt', '', 'print', false);
// [See also]
//  You can set several options with the following functions:
//  execute_ex_set_directory to set the working directory for the program.
//  execute_ex_set_showmode to run the program maximized, minimized or hidden.
if (!variable_global_exists('__execute_shell_ex__')) {
    // function execute_shell_ex(prog, arg, verb: PChar): Double; stdcall;
    global.__execute_shell_ex__ = external_define('ExecuteEx.dll', 'execute_shell_ex', dll_stdcall, ty_real, 3, ty_string, ty_string, ty_string);
}
return external_call(global.__execute_shell_ex__, argument0, argument1, argument2);
