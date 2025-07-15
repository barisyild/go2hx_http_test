package _internal.bytes_test;
function _benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _offset:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L217"
        _b.stopTimer();
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L219"
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...((("Hello Gophers!" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b2 = ((((("12345678" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _offset) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b1 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L223"
        _b.startTimer();
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L224"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L225"
                if (stdgo._internal.bytes.Bytes_compare.compare(_b1, (_b2.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L226"
                    _b.fatal(new stdgo.AnyInterface(("b1 != b2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L229"
        _b.setBytes((_b1.length : stdgo.GoInt64));
    }
