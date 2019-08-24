require_once(__DIR__.'/../vendor/autoload.hack');

<<__EntryPoint>>
function main2(): noreturn {
    \Facebook\AutoloadMap\initialize();

    $hw = "Hello, World!\n";
    MyLib::myPrint($hw);
    exit(0);
}
