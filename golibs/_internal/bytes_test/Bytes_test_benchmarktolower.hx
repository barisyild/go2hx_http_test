package _internal.bytes_test;
function benchmarkToLower(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1144"
        if (_internal.bytes_test.Bytes_test__lowertests._lowerTests != null) for (__0 => _tc in _internal.bytes_test.Bytes_test__lowertests._lowerTests) {
            var _tin = (_tc._in : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1146"
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1147"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        var _actual = stdgo._internal.bytes.Bytes_tolower.toLower(_tin);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1149"
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _tc._out)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1150"
                            _b.errorf(("ToLower(%q) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tc._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                        };
                        _i++;
                    };
                };
            });
        };
    }
