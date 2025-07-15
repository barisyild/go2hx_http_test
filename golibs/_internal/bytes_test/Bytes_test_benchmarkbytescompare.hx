package _internal.bytes_test;
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2119"
        {
            var _n = @:assignType (1 : stdgo.GoInt);
            while ((_n <= (2048 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2120"
                _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    var _x = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var _y = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2124"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < _n : Bool)) {
                            _x[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                            _i++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2128"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < _n : Bool)) {
                            _y[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                            _i++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2132"
                    _b.resetTimer();
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2133"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2134"
                            stdgo._internal.bytes.Bytes_compare.compare(_x, _y);
                            _i++;
                        };
                    };
                });
                _n = (_n << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
    }
