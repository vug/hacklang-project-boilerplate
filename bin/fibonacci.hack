// $ hhvm other/fibonacci.hack
require_once(__DIR__.'/../vendor/autoload.hack');


function fibonacci(num $number): num {
  return \intval(\round(\pow((\sqrt(5.0) + 1) / 2, $number) / \sqrt(5.0)));
}

<<__EntryPoint>>
async function main2_async(): Awaitable<noreturn> {
    // Initialize auto-loader so that function definitions can be found
    \Facebook\AutoloadMap\initialize();

    $x = 10;
    $y = MyLib::times2($x);
  echo 'The '.
    $y .
    ' number in fibonacci is: '.
    fibonacci($y).
    \PHP_EOL;
    // noreturn needs exiting
    exit(0);
}
