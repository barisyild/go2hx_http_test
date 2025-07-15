package _internal.bytes_test;
function _fillBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L77"
        _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (fill 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L78"
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _buf.write(_fub), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L80"
            if (_m != ((_fub.length))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L81"
                _t.errorf((_testname + (" (fill 2): m == %d, expected %d" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__(), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_fub.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L83"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L84"
                _t.errorf((_testname + (" (fill 3): err should always be nil, found err == %s" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__(), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
_s = (_s + ((_fub : stdgo.GoString)).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L87"
            _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (fill 4)" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__(), _buf, _s.__copy__());
            _n--;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L89"
        return _s?.__copy__();
    }
