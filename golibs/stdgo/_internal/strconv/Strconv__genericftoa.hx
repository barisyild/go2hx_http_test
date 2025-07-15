package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _genericFtoa(_dst:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.GoFloat64, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _bits:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo> = (null : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L60"
        {
            final __value__ = _bitSize;
            if (__value__ == ((32 : stdgo.GoInt))) {
                _bits = (stdgo._internal.math.Math_float32bits.float32bits((_val : stdgo.GoFloat32)) : stdgo.GoUInt64);
                _flt = (stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float32info._float32info, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_floatinfodott_floatinfo.__type__stdgodot_internaldotstrconvdotStrconv_t_floatinfodotT_floatInfo })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                _bits = stdgo._internal.math.Math_float64bits.float64bits(_val);
                _flt = (stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float64info._float64info, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_floatinfodott_floatinfo.__type__stdgodot_internaldotstrconvdotStrconv_t_floatinfodotT_floatInfo })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L68"
                throw new stdgo.AnyInterface(("strconv: illegal AppendFloat/FormatFloat bitSize" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        var _neg = @:assignType ((_bits >> (((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expbits + (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoUInt)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64)) : Bool);
        var _exp = @:assignType (((_bits >> (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoUInt64) : stdgo.GoInt) & ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _mant = @:assignType (_bits & ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L75"
        {
            final __value__ = _exp;
            if (__value__ == ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L79"
                if (_mant != ((0i64 : stdgo.GoUInt64))) {
                    _s = ("NaN" : stdgo.GoString);
                } else if (_neg) {
                    _s = ("-Inf" : stdgo.GoString);
                } else {
                    _s = ("+Inf" : stdgo.GoString);
                };
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L87"
                return (_dst.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L91"
                _exp++;
            } else {
                _mant = (_mant | (((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        _exp = (_exp + ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bias) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L100"
        if (_fmt == ((98 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L101"
            return stdgo._internal.strconv.Strconv__fmtb._fmtB(_dst, _neg, _mant, _exp, _flt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L103"
        if (((_fmt == (120 : stdgo.GoUInt8)) || (_fmt == (88 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L104"
            return stdgo._internal.strconv.Strconv__fmtx._fmtX(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L107"
        if (!stdgo._internal.strconv.Strconv__optimize._optimize) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L108"
            return stdgo._internal.strconv.Strconv__bigftoa._bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        var _digs:stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice = ({} : stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice);
        var _ok = @:assignType (false : Bool);
        var _shortest = @:assignType (_prec < (0 : stdgo.GoInt) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L115"
        if (_shortest) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
            _digs._d = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L119"
            stdgo._internal.strconv.Strconv__ryuftoashortest._ryuFtoaShortest((stdgo.Go.setRef(_digs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_decimalslicedott_decimalslice.__type__stdgodot_internaldotstrconvdotStrconv_t_decimalslicedotT_decimalSlice })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>), _mant, (_exp - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt), _flt);
            _ok = true;
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L122"
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _prec = stdgo._internal.strconv.Strconv__max._max((_digs._nd - (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _prec = stdgo._internal.strconv.Strconv__max._max((_digs._nd - _digs._dp : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    _prec = _digs._nd;
                };
            };
        } else if (_fmt != ((102 : stdgo.GoUInt8))) {
            var _digits = @:assignType (_prec : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L133"
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L135"
                    _digits++;
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L137"
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    _digits = _prec;
                } else {
                    _digits = (1 : stdgo.GoInt);
                };
            };
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L146"
            if (((_bitSize == (32 : stdgo.GoInt)) && (_digits <= (9 : stdgo.GoInt) : Bool) : Bool)) {
                _digs._d = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L148"
                stdgo._internal.strconv.Strconv__ryuftoafixed32._ryuFtoaFixed32((stdgo.Go.setRef(_digs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_decimalslicedott_decimalslice.__type__stdgodot_internaldotstrconvdotStrconv_t_decimalslicedotT_decimalSlice })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>), (_mant : stdgo.GoUInt32), (_exp - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt), _digits);
                _ok = true;
            } else if ((_digits <= (18 : stdgo.GoInt) : Bool)) {
                _digs._d = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L152"
                stdgo._internal.strconv.Strconv__ryuftoafixed64._ryuFtoaFixed64((stdgo.Go.setRef(_digs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_decimalslicedott_decimalslice.__type__stdgodot_internaldotstrconvdotStrconv_t_decimalslicedotT_decimalSlice })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>), _mant, (_exp - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt), _digits);
                _ok = true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L156"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L157"
            return stdgo._internal.strconv.Strconv__bigftoa._bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L159"
        return stdgo._internal.strconv.Strconv__formatdigits._formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }
