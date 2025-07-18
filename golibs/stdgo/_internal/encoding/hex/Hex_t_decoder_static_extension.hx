package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L190"
        if (((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.length) < (2 : stdgo.GoInt) : Bool) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
            var _numCopy:stdgo.GoInt = (0 : stdgo.GoInt), _numRead:stdgo.GoInt = (0 : stdgo.GoInt);
            _numCopy = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in);
            {
                var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arr.__slice__(_numCopy) : stdgo.Slice<stdgo.GoUInt8>));
                _numRead = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arr.__slice__(0, (_numCopy + _numRead : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L195"
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
            })) && ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L197"
                {
                    var _a = @:assignType ((stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255) : stdgo.GoString)[((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in[(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in[(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.hex.Hex_invalidbyteerror.InvalidByteError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdothexdothex_invalidbyteerrordotinvalidbyteerror.__type__stdgodot_internaldotencodingdothexdotHex_invalidbyteerrordotInvalidByteError);
                    } else {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L206"
        {
            var _numAvail = @:assignType (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            if (((_p.length) > _numAvail : Bool)) {
                _p = (_p.__slice__(0, _numAvail) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_p, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.__slice__(0, ((_p.length) * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _numDec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.__slice__(((2 : stdgo.GoInt) * _numDec : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L211"
        if (_err != null) {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = _err;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in = @:binopAssign __tmp__0;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L215"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L216"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numDec, _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L218"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numDec, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
