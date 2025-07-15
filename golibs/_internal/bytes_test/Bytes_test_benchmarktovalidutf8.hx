package _internal.bytes_test;
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_162.T__struct_162>(3, 3, ...[({ _name : ("Valid" : stdgo.GoString), _input : ((("typical" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162), ({ _name : ("InvalidASCII" : stdgo.GoString), _input : ((stdgo.Go.str("foo", 255, "bar") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162), ({ _name : ("InvalidNonASCII" : stdgo.GoString), _input : ((stdgo.Go.str("日本語", 255, "日本語") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_162.T__struct_162>);
        var _replacement = ((("�" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1997"
        _b.resetTimer();
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1998"
        if (_tests != null) for (__0 => _test in _tests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1999"
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2000"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2001"
                        stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8(_test._input, _replacement);
                        _i++;
                    };
                };
            });
        };
    }
