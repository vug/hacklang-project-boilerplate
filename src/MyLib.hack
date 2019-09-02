class MyLib {
    public static function myPrint(mixed $x): void {
        print_r($x);
    }

    public static function times2(num $x): num {
        return $x * 2;
    }
}
