package _internal.bytes_test;
function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _offset:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L241"
        _b.stopTimer();
        var _pattern = ((("Hello Gophers!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((1048576 : stdgo.GoInt) + (_pattern.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L244"
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...(_pattern : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b2 = (new stdgo.Slice<stdgo.GoUInt8>((_b1.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L248"
        _b2.__copyTo__(_b1);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L249"
        _b.startTimer();
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L250"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L251"
                if (stdgo._internal.bytes.Bytes_compare.compare((_b1.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>), (_b2.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L252"
                    _b.fatal(new stdgo.AnyInterface(("b1 != b2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L255"
        _b.setBytes(((_b1.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>).length : stdgo.GoInt64));
    }
