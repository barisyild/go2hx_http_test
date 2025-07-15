package _internal.bytes_test;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString):Void {
        var _bytes = _buf.bytes();
        var _str = @:assignType ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L37"
        if (_buf.len() != ((_bytes.length))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L38"
            _t.errorf(("%s: buf.Len() == %d, len(buf.Bytes()) == %d" : stdgo.GoString), new stdgo.AnyInterface(_testname, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_buf.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_bytes.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L41"
        if (_buf.len() != ((_str.length))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L42"
            _t.errorf(("%s: buf.Len() == %d, len(buf.String()) == %d" : stdgo.GoString), new stdgo.AnyInterface(_testname, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_buf.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_str.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L45"
        if (_buf.len() != ((_s.length))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L46"
            _t.errorf(("%s: buf.Len() == %d, len(s) == %d" : stdgo.GoString), new stdgo.AnyInterface(_testname, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_buf.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_s.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L49"
        if ((_bytes : stdgo.GoString) != (_s)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L50"
            _t.errorf(("%s: string(buf.Bytes()) == %q, s == %q" : stdgo.GoString), new stdgo.AnyInterface(_testname, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_bytes : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
