package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_dotReader_asInterface) class T_dotReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {};
        var _br = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L333"
        while (((_n < (_b.length) : Bool) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != (5 : stdgo.GoInt)) : Bool)) {
            var _c:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            {
                var __tmp__ = _br.readByte();
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L336"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L337"
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L340"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L342"
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L344"
                            if (_c == ((46 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (1 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L346"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L348"
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (3 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L350"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L355"
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (2 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L357"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L359"
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (5 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L361"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L366"
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (5 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L368"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L372"
                            _br.unreadByte();
                            _c = (13 : stdgo.GoUInt8);
                            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L377"
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (0 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L379"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L382"
                            _br.unreadByte();
                            _c = (13 : stdgo.GoUInt8);
                            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L387"
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (3 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L389"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L391"
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (0 : stdgo.GoInt);
                            };
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            _b[(_n : stdgo.GoInt)] = _c;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L396"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L398"
        if (((_err == null) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == (5 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L401"
        if (((_err != null) && ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot == _d) : Bool)) {
            (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L404"
        return { _0 : _n, _1 : _err };
    }
}
