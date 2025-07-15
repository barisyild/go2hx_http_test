package _internal.bytes_test;
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(((("groucho" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L211"
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L213"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L215"
        {
            var _err = @:assignType (_buf.unreadByte() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L217"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L219"
        {
            var _err = @:assignType (_buf.unreadByte() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L220"
                _t.fatal(new stdgo.AnyInterface(("UnreadByte: expected error, got nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
