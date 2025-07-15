package _internal.bytes_test;
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L283"
        _b.stopTimer();
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L285"
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...((("Hello Gophers!" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b2 = _b1;
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L289"
        _b.startTimer();
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L290"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L291"
                if (stdgo._internal.bytes.Bytes_compare.compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L292"
                    _b.fatal(new stdgo.AnyInterface(("b1 != b2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L295"
        _b.setBytes((_b1.length : stdgo.GoInt64));
    }
