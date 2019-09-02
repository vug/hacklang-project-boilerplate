use namespace Facebook\CLILib;
use namespace Facebook\CLILib\CLIOptions;

final class MyCLIWithArgs extends CLILib\CLIWithArguments {
  <<__Override>>
  public async function mainAsync(): Awaitable<int> {
    await $this->getStdout()->writeAsync("Hello, CLI!\n");
    print_r($this->getArgv());
    return 0;
  }

  <<__Override>>
  protected function getSupportedOptions(): vec<CLIOptions\CLIOption> {
    return vec[];
  }
}
