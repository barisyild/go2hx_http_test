package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
function _fmtF(_buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt, _d:stdgo._internal.math.big.Big_t_decimal.T_decimal):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L290"
        if ((_d._exp > (0 : stdgo.GoInt) : Bool)) {
            var _m = @:assignType (stdgo._internal.math.big.Big__min._min((_d._mant.length), _d._exp) : stdgo.GoInt);
            _buf = (_buf.__append__(...((_d._mant.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L293"
            while ((_m < _d._exp : Bool)) {
                _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _m++;
            };
        } else {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L301"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L303"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _prec : Bool)) {
                    _buf = (_buf.__append__(_d._at((_d._exp + _i : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>);
                    _i++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L308"
        return _buf;
    }
