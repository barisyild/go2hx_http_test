package _internal.bytes_test;
function testReadBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L478"
        if (_internal.bytes_test.Bytes_test__readbytestests._readBytesTests != null) for (__0 => _test in _internal.bytes_test.Bytes_test__readbytestests._readBytesTests) {
            var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(_test._buffer?.__copy__());
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L481"
            if (_test._expected != null) for (__1 => _expected in _test._expected) {
                var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L484"
                if ((_bytes : stdgo.GoString) != (_expected)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L485"
                    _t.errorf(("expected %q, got %q" : stdgo.GoString), new stdgo.AnyInterface(_expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_bytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L487"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L488"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L491"
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
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L492"
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
