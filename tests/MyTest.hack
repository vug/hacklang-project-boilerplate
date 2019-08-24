// vendor/bin/hacktest tests/MyTest.hack
use function Facebook\FBExpect\expect;
use type Facebook\HackTest\{DataProvider, HackTest};

final class MyTest extends HackTest {
    public function provideTimesTwoExamples(): vec<(num, num)> {
        return vec[
            tuple(2, 4),
            tuple(3, 6),
            tuple(0, 0),
        ];
    }

    <<DataProvider('provideTimesTwoExamples')>>
    public function testTimesTwo(num $in, num $expected_output): void {
        expect(MyLib::times2($in))->toBeSame($expected_output);
    }
}
