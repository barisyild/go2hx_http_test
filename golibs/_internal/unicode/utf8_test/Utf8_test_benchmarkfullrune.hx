package _internal.unicode.utf8_test;
function benchmarkFullRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _benchmarks = (new stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_t__struct_31.T__struct_31>(3, 3, ...[({ _name : ("ASCII" : stdgo.GoString), _data : ((("a" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_t__struct_31.T__struct_31), ({ _name : ("Incomplete" : stdgo.GoString), _data : ((stdgo.Go.str(240, 144, 128) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_t__struct_31.T__struct_31), ({ _name : ("Japanese" : stdgo.GoString), _data : ((("本" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_t__struct_31.T__struct_31)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_t__struct_31.T__struct_31)])) : stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_t__struct_31.T__struct_31>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L696"
        if (_benchmarks != null) for (__0 => _bm in _benchmarks) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L697"
            _b.run(_bm._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L698"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        _internal.unicode.utf8_test.Utf8_test__boolsink._boolSink = stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_bm._data);
                        _i++;
                    };
                };
            });
        };
    }
