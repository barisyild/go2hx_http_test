package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_dotWriter_asInterface) class T_dotWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L104"
        if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot == (_d)) {
            (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot = null;
        };
        var _bw = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__()).w;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L108"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state;
                    if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L113"
                        _bw.writeByte((10 : stdgo.GoUInt8));
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L114"
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L116"
                        _bw.write(stdgo._internal.net.textproto.Textproto__dotcrnl._dotcrnl);
                        break;
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L110"
                        _bw.writeByte((13 : stdgo.GoUInt8));
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L111"
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L118"
        return _bw.flush();
    }
    @:keep
    @:tdfield
    static public function write( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _bw = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__()).w;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L69"
        while ((_n < (_b.length) : Bool)) {
            var _c = @:assignType (_b[(_n : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L71"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))))) {
                            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (3 : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L74"
                            if (_c == ((46 : stdgo.GoUInt8))) {
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L76"
                                _bw.writeByte((46 : stdgo.GoUInt8));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L78"
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L81"
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (2 : stdgo.GoInt);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L84"
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L85"
                                _bw.writeByte((13 : stdgo.GoUInt8));
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (1 : stdgo.GoInt);
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (3 : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L91"
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (1 : stdgo.GoInt);
                            };
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L95"
            {
                _err = _bw.writeByte(_c);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L96"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L98"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L100"
        return { _0 : _n, _1 : _err };
    }
}
