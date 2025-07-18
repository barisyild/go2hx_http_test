package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _fmtB(_dst:stdgo.Slice<stdgo.GoUInt8>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L469"
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__formatbits._formatBits(_dst, _mant, (10 : stdgo.GoInt), false, true);
            _dst = @:tmpset0 __tmp__._0;
        };
        _dst = (_dst.__append__((112 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _exp = (_exp - (((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L481"
        if ((_exp >= (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__formatbits._formatBits(_dst, (_exp : stdgo.GoUInt64), (10 : stdgo.GoInt), (_exp < (0 : stdgo.GoInt) : Bool), true);
            _dst = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L486"
        return _dst;
    }
