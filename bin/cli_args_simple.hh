<?hh // partial
/**
 * from: https://docs.hhvm.com/hhvm/basic-usage/command-line
 *
 * hhvm bin/cli_args_simple.hh foo bar 123
 *
 * <<__EntryPoint>> is not needed here.
 * We are calling main function from a top-level statement.
 * Which requires this file to be partial, not hack.
 * $argv is a pre-defined variable in PHP. https://www.php.net/manual/en/reserved.variables.argv.php
 */
require_once(__DIR__.'/../vendor/autoload.hack');

function cli_args_simple_main(array<string> $argv): noreturn {
  \Facebook\AutoloadMap\initialize();

  MyLib::myPrint("Hello, World!\n");  // Can call a class in src/
  MyLib::myPrint($argv);
  exit(0);
}

cli_args_simple_main($argv);
