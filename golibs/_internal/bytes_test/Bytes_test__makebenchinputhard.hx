package _internal.bytes_test;
function _makeBenchInputHard():stdgo.Slice<stdgo.GoUInt8> {
        var _tokens = (new stdgo.GoArray<stdgo.GoString>(10, 10, ...[("<a>" : stdgo.GoString), ("<p>" : stdgo.GoString), ("<b>" : stdgo.GoString), ("<strong>" : stdgo.GoString), ("</a>" : stdgo.GoString), ("</p>" : stdgo.GoString), ("</b>" : stdgo.GoString), ("</strong>" : stdgo.GoString), ("hello" : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2014"
        while (true) {
            var _i = @:assignType (stdgo._internal.math.rand.Rand_intn.intn((_tokens.length)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2016"
            if ((((_x.length) + (_tokens[(_i : stdgo.GoInt)].length) : stdgo.GoInt) >= (1048576 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2017"
                break;
            };
            _x = (_x.__append__(...(_tokens[(_i : stdgo.GoInt)] : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2021"
        return _x;
    }
