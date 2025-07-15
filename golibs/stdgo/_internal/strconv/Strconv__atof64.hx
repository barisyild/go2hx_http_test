package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _atof64(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _f = (0 : stdgo.GoFloat64), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L618"
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__special._special(_s?.__copy__()), _val:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L619"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _val, _1 : _n, _2 : (null : stdgo.Error) };
                    _f = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__readfloat._readFloat(_s?.__copy__()), _mantissa:stdgo.GoUInt64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1, _neg:Bool = __tmp__._2, _trunc:Bool = __tmp__._3, _hex:Bool = __tmp__._4, _n:stdgo.GoInt = __tmp__._5, _ok:Bool = __tmp__._6;
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L623"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L624"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L627"
        if (_hex) {
            var __tmp__ = stdgo._internal.strconv.Strconv__atofhex._atofHex((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), (stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float64info._float64info, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_floatinfodott_floatinfo.__type__stdgodot_internaldotstrconvdotStrconv_t_floatinfodotT_floatInfo })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>), _mantissa, _exp, _neg, _trunc), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L629"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : _err };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L632"
        if (stdgo._internal.strconv.Strconv__optimize._optimize) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L635"
            if (!_trunc) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L636"
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv__atof64exact._atof64exact(_mantissa, _exp, _neg), _f:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L637"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                            _f = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
            };
            var __tmp__ = stdgo._internal.strconv.Strconv__eisellemire64._eiselLemire64(_mantissa, _exp, _neg), _f:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L641"
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L642"
                if (!_trunc) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L643"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                        _f = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv__eisellemire64._eiselLemire64((_mantissa + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _exp, _neg), _fUp:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L649"
                if ((_ok && (_f == _fUp) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L650"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                        _f = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
        };
        var _d:stdgo._internal.strconv.Strconv_t_decimal.T_decimal = ({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L657"
        if (!_d._set((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L658"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = _d._floatBits((stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float64info._float64info, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_floatinfodott_floatinfo.__type__stdgodot_internaldotstrconvdotStrconv_t_floatinfodotT_floatInfo })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>)), _b:stdgo.GoUInt64 = __tmp__._0, _ovf:Bool = __tmp__._1;
        _f = stdgo._internal.math.Math_float64frombits.float64frombits(_b);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L662"
        if (_ovf) {
            _err = stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseFloat" : stdgo.GoString), _s?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L665"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : _err };
            _f = __tmp__._0;
            _n = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
