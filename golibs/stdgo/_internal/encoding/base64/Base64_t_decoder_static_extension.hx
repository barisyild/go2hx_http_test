package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L418"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) > (0 : stdgo.GoInt) : Bool)) {
            _n = _p.__copyTo__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L421"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L424"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L425"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L431"
        while ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf < (4 : stdgo.GoInt) : Bool) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr == null) : Bool)) {
            var _nn = @:assignType (((_p.length) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L433"
            if ((_nn < (4 : stdgo.GoInt) : Bool)) {
                _nn = (4 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L436"
            if ((_nn > ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                _nn = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length);
            };
            {
                var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf, _nn) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr = @:tmpset0 __tmp__._1;
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf + (_nn) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L443"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf < (4 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L444"
            if ((((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar == (-1 : stdgo.GoInt32)) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                var _nw:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.decode(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                    _nw = @:tmpset0 __tmp__._0;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
                };
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
                _n = _p.__copyTo__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L452"
                if (((_n > (0 : stdgo.GoInt) : Bool) || ((_p.length) == ((0 : stdgo.GoInt)) && (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L453"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L455"
                if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L456"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr;
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L460"
            if (((({
                final __t__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L463"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _nr = @:assignType (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _nw = @:assignType (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L469"
        if ((_nw > (_p.length) : Bool)) {
            {
                var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.decode(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _nw = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
            _n = _p.__copyTo__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.decode(_p, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf - (_nr) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L478"
        ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_nr) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L479"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
