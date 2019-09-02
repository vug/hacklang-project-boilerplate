/**
 * hhvm bin/cli_noargs_simple.hack
 *
 * Cannot take arguments. Calls the function that is marked with __EntryPoint attribute.
 */
require_once(__DIR__.'/../vendor/autoload.hack');

<<__EntryPoint>>
function cli_noargs_simple_main(): noreturn {
  \Facebook\AutoloadMap\initialize();
  MyLib::myPrint("Hello, World!\n");
  exit(0);
}
