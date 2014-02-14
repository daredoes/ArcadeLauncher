// [Function] execute_ex_get_error()
// [Description]
//  This function returns the error message of the error
//  which is caused by the last call of execute_program_ex or execute_shell_ex.
//  If there was no error, it returns an empty string ''.
// [Inputs]
//  none
// [Example]
//  // This shows an error message in case it fails to start a program.
//  if (!execute_shell_ex('ReadMe.txt', '', 'print', true)) {
//      show_message(execute_ex_get_error());
//  }
if (!variable_global_exists('__execute_ex_get_error__')) {
    // function execute_ex_get_error(): PChar; stdcall;
    global.__execute_ex_get_error__ = external_define('ExecuteEx.dll', 'execute_ex_get_error', dll_stdcall, ty_string, 0);
}
return external_call(global.__execute_ex_get_error__);
