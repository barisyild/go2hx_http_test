package _internal.bytes_test;
function testReadString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L498"
        if (_internal.bytes_test.Bytes_test__readbytestests._readBytesTests != null) for (__0 => _test in _internal.bytes_test.Bytes_test__readbytestests._readBytesTests) {
            var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(_test._buffer?.__copy__());
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L501"
            if (_test._expected != null) for (__1 => _expected in _test._expected) {
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L504"
                if (_s != (_expected)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L505"
                    _t.errorf(("expected %q, got %q" : stdgo.GoString), new stdgo.AnyInterface(_expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L507"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L508"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L511"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = _test._err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L512"
                _t.errorf(("expected error %v, got %v" : stdgo.GoString), ({
                    final __t__ = _test._err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
