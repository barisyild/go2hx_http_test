package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function readUvarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L135"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L137"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L138"
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (({
                        final __t__ = _err;
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
                    })) : Bool)) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L141"
                    return { _0 : _x, _1 : _err };
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L143"
                if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L144"
                    if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L145"
                        return { _0 : _x, _1 : stdgo._internal.encoding.binary.Binary__erroverflow._errOverflow };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L147"
                    return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (null : stdgo.Error) };
                };
_x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
_s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L152"
        return { _0 : _x, _1 : stdgo._internal.encoding.binary.Binary__erroverflow._errOverflow };
    }
