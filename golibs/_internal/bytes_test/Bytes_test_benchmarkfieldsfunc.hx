package _internal.bytes_test;
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1952"
        if (_internal.bytes_test.Bytes_test__bytesdata._bytesdata != null) for (__0 => _sd in _internal.bytes_test.Bytes_test__bytesdata._bytesdata) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1953"
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1954"
                {
                    var _j = @:assignType (16 : stdgo.GoInt);
                    while ((_j <= (1048576 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1955"
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1956"
                            _b.reportAllocs();
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1957"
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1959"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1960"
                                    stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(_data, stdgo._internal.unicode.Unicode_isspace.isSpace);
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
