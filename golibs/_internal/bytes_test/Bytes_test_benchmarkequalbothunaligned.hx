package _internal.bytes_test;
function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(64 : stdgo.GoInt), (4096 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L657"
        if (!_internal.bytes_test.Bytes_test__isracebuilder._isRaceBuilder) {
            _sizes = (_sizes.__append__(...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        };
        var _maxSize = @:assignType ((2 : stdgo.GoInt) * ((_sizes[((_sizes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L661"
        if (((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) < _maxSize : Bool)) {
            _internal.bytes_test.Bytes_test__bmbuf._bmbuf = (new stdgo.Slice<stdgo.GoUInt8>((_maxSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L665"
        if (_sizes != null) for (__0 => _n in _sizes) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L666"
            if ((new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) != null) for (__1 => _off in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _buf1 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__(_off, (_off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                var _buf2Start = @:assignType ((((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) + _off : stdgo.GoInt);
                var _buf2 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__(_buf2Start, (_buf2Start + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L672"
                _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L673"
                    _b.setBytes((_n : stdgo.GoInt64));
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L674"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            var _eq = @:assignType (stdgo._internal.bytes.Bytes_equal.equal(_buf1, _buf2) : Bool);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L676"
                            if (!_eq) {
                                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L677"
                                _b.fatal(new stdgo.AnyInterface(("bad equal" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            };
                            _i++;
                        };
                    };
                });
                _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
    }
