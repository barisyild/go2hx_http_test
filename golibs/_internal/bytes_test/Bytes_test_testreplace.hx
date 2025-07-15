package _internal.bytes_test;
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1628"
        if (_internal.bytes_test.Bytes_test_replacetests.replaceTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_replacetests.replaceTests) {
            var _in = ((_tt._in : stdgo.Slice<stdgo.GoUInt8>).__append__(...((("<spare>" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _in = (_in.__slice__(0, (_tt._in.length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _out = stdgo._internal.bytes.Bytes_replace.replace(_in, (_tt._old : stdgo.Slice<stdgo.GoUInt8>), (_tt._new_ : stdgo.Slice<stdgo.GoUInt8>), _tt._n);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1632"
            {
                var _s = @:assignType ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1633"
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._old, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._new_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1635"
            if (((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)])) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1636"
                _t.errorf(("Replace(%q, %q, %q, %d) didn\'t copy" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._old, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._new_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1638"
            if (_tt._n == ((-1 : stdgo.GoInt))) {
                var _out = stdgo._internal.bytes.Bytes_replaceall.replaceAll(_in, (_tt._old : stdgo.Slice<stdgo.GoUInt8>), (_tt._new_ : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1640"
                {
                    var _s = @:assignType ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._out)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1641"
                        _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._old, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._new_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            };
        };
    }
