<?hh // partial
/**
 * from: ttps://github.com/hhvm/hh-clilib
 * Minimal non-strict file made of top-level statements 
 * to run CLI Hack programs with arguments.
 *
 * hhvm bin/cli_args_clilib.hh foo bar 123
 *
 * Just call runAsync method of a CLI program class.
 * The called object will know the CLI arguments.
 */
require_once(__DIR__.'/../vendor/autoload.hack');

\Facebook\AutoloadMap\initialize();

MyCLIWithArgs::runAsync();
