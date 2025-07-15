package _internal.bytes_test;
function testRuneIO(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((4000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L363"
        {
            var _r = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_r < (1000 : stdgo.GoInt32) : Bool)) {
                var _size = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
var __tmp__ = _buf.writeRune(_r), _nbytes:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L366"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L367"
                    _t.fatalf(("WriteRune(%U) error: %s" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L369"
                if (_nbytes != (_size)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L370"
                    _t.fatalf(("WriteRune(%U) expected %d, got %d" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_nbytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
_n = (_n + (_size) : stdgo.GoInt);
                _r++;
            };
        };
        _b = (_b.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L377"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_buf.bytes(), _b)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L378"
            _t.fatalf(("incorrect result from WriteRune: %q not %q" : stdgo.GoString), new stdgo.AnyInterface(_buf.bytes(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        var _p = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L383"
        {
            var _r = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_r < (1000 : stdgo.GoInt32) : Bool)) {
                var _size = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_p, _r) : stdgo.GoInt);
var __tmp__ = _buf.readRune(), _nr:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L386"
                if (((_nr != (_r) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L387"
                    _t.fatalf(("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_nr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_nbytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                _r++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L392"
        _buf.reset();
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L395"
        {
            var _err = @:assignType (_buf.unreadRune() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L396"
                _t.fatal(new stdgo.AnyInterface(("UnreadRune at EOF: got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L398"
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L399"
                _t.fatal(new stdgo.AnyInterface(("ReadRune at EOF: got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L401"
        {
            var _err = @:assignType (_buf.unreadRune() : stdgo.Error);
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L402"
                _t.fatal(new stdgo.AnyInterface(("UnreadRune after ReadRune at EOF: got no error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L406"
        _buf.write(_b);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L407"
        {
            var _r = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_r < (1000 : stdgo.GoInt32) : Bool)) {
                var __tmp__ = _buf.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, __2:stdgo.Error = __tmp__._2;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L409"
                {
                    var _err = @:assignType (_buf.unreadRune() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L410"
                        _t.fatalf(("UnreadRune(%U) got error %q" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
var __tmp__ = _buf.readRune(), _r2:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L413"
                if ((((_r1 != (_r2) || _r1 != (_r) : Bool) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L414"
                    _t.fatalf(("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_r2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_nbytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                _r++;
            };
        };
    }
