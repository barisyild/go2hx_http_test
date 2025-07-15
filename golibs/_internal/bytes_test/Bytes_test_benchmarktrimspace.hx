package _internal.bytes_test;
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_162.T__struct_162>(4, 4, ...[({ _name : ("NoTrim" : stdgo.GoString), _input : ((("typical" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162), ({ _name : ("ASCII" : stdgo.GoString), _input : ((("  foo bar  " : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162), ({ _name : ("SomeNonASCII" : stdgo.GoString), _input : ((("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162), ({ _name : ("JustNonASCII" : stdgo.GoString), _input : ((("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_162.T__struct_162)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_162.T__struct_162>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1978"
        if (_tests != null) for (__0 => _test in _tests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1979"
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1980"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1981"
                        stdgo._internal.bytes.Bytes_trimspace.trimSpace(_test._input);
                        _i++;
                    };
                };
            });
        };
    }
