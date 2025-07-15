package _internal.bytes_test;
function _empty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L105"
        _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (empty 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L107"
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L109"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L110"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L112"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L113"
                _t.errorf((_testname + (" (empty 2): err should always be nil, found err == %s" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L116"
            _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (empty 3)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L119"
        _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (empty 4)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
