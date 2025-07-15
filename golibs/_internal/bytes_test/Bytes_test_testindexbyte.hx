package _internal.bytes_test;
function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L290"
        if (_internal.bytes_test.Bytes_test__indextests._indexTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__indextests._indexTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L291"
            if ((_tt._b.length) != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L292"
                continue;
            };
            var _a = (_tt._a : stdgo.Slice<stdgo.GoUInt8>);
            var _b = @:assignType (_tt._b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _pos = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_a, _b) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L297"
            if (_pos != (_tt._i)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L298"
                _t.errorf(("IndexByte(%q, \'%c\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            var _posp = @:assignType (stdgo._internal.bytes.Bytes_indexbyteportable.indexBytePortable(_a, _b) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L301"
            if (_posp != (_tt._i)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L302"
                _t.errorf(("indexBytePortable(%q, \'%c\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(_posp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
