package _internal.bytes_test;
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1586"
        if (_internal.bytes_test.Bytes_test__indexfunctests._indexFuncTests != null) for (__0 => _tc in _internal.bytes_test.Bytes_test__indexfunctests._indexFuncTests) {
            var _first = @:assignType (stdgo._internal.bytes.Bytes_indexfunc.indexFunc((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._f._f) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1588"
            if (_first != (_tc._first)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1589"
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._f._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_first, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tc._first, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            var _last = @:assignType (stdgo._internal.bytes.Bytes_lastindexfunc.lastIndexFunc((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._f._f) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1592"
            if (_last != (_tc._last)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1593"
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._f._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_last, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tc._last, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
