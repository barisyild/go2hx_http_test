package _internal.bytes_test;
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(((("世界" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L261"
        {
            var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L262"
                _t.errorf(("ReadRune: unexpected error: %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L266"
        _r.reset(((("abcdef" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L267"
        {
            var _err = @:assignType (_r.unreadRune() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L268"
                _t.errorf(("UnreadRune: expected error, got nil" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }))), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L271"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L272"
            _t.errorf(("ReadAll: unexpected error: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L274"
        {
            var _got = @:assignType ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("abcdef" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L275"
                _t.errorf(("ReadAll: got %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("abcdef" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
