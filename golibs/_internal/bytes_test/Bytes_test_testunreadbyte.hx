package _internal.bytes_test;
function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L592"
        {
            var _err = @:assignType (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L593"
                _t.fatal(new stdgo.AnyInterface(("UnreadByte at EOF: got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L595"
        {
            var __tmp__ = _b.readByte(), __0:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L596"
                _t.fatal(new stdgo.AnyInterface(("ReadByte at EOF: got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L598"
        {
            var _err = @:assignType (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L599"
                _t.fatal(new stdgo.AnyInterface(("UnreadByte after ReadByte at EOF: got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L603"
        _b.writeString(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L606"
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L607"
                _t.fatalf(("Read(nil) = %d,%v; want 0,nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L609"
        {
            var _err = @:assignType (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L610"
                _t.fatal(new stdgo.AnyInterface(("UnreadByte after Read(nil): got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L614"
        {
            var __tmp__ = _b.readBytes((109 : stdgo.GoUInt8)), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L615"
                _t.fatalf(("ReadBytes: %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L617"
        {
            var _err = @:assignType (_b.unreadByte() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L618"
                _t.fatalf(("UnreadByte: %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        var __tmp__ = _b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L621"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L622"
            _t.fatalf(("ReadByte: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L624"
        if (_c != ((109 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L625"
            _t.errorf(("ReadByte = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface((109 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
        };
    }
