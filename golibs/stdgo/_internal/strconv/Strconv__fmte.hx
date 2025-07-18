package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _fmtE(_dst:stdgo.Slice<stdgo.GoUInt8>, _neg:Bool, _d:stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L381"
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _ch = @:assignType ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L387"
        if (_d._nd != ((0 : stdgo.GoInt))) {
            _ch = _d._d[(0 : stdgo.GoInt)];
        };
        _dst = (_dst.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L393"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            var _i = @:assignType (1 : stdgo.GoInt);
            var _m = @:assignType (stdgo._internal.strconv.Strconv__min._min(_d._nd, (_prec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L397"
            if ((_i < _m : Bool)) {
                _dst = (_dst.__append__(...((_d._d.__slice__(_i, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i = _m;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L401"
            while ((_i <= _prec : Bool)) {
                _dst = (_dst.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        _dst = (_dst.__append__(_fmt) : stdgo.Slice<stdgo.GoUInt8>);
        var _exp = @:assignType (_d._dp - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L409"
        if (_d._nd == ((0 : stdgo.GoInt))) {
            _exp = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L412"
        if ((_exp < (0 : stdgo.GoInt) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L421"
        if ((_exp < (10 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((48 : stdgo.GoUInt8), ((_exp : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((_exp < (100 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _dst = (_dst.__append__((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), ((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L430"
        return _dst;
    }
