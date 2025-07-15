package _internal.bytes_test;
function benchmarkFields(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1935"
        if (_internal.bytes_test.Bytes_test__bytesdata._bytesdata != null) for (__0 => _sd in _internal.bytes_test.Bytes_test__bytesdata._bytesdata) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1936"
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1937"
                {
                    var _j = @:assignType (16 : stdgo.GoInt);
                    while ((_j <= (1048576 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1938"
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1939"
                            _b.reportAllocs();
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1940"
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1942"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1943"
                                    stdgo._internal.bytes.Bytes_fields.fields(_data);
                                    _i++;
                                };
                            };
                        });
                        _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                };
            });
        };
    }
