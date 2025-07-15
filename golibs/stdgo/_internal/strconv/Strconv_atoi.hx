package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function atoi(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        {};
        var _sLen = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L251"
        if (((true && ((((0 : stdgo.GoInt) < _sLen : Bool) && (_sLen < (10 : stdgo.GoInt) : Bool) : Bool)) : Bool) || (false && ((((0 : stdgo.GoInt) < _sLen : Bool) && (_sLen < (19 : stdgo.GoInt) : Bool) : Bool)) : Bool) : Bool)) {
            var _s0 = @:assignType (_s?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L255"
            if (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L257"
                if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L258"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("Atoi" : stdgo.GoString), _s0?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                };
            };
            var _n = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L263"
            if ((_s : stdgo.Slice<stdgo.GoUInt8>) != null) for (__0 => _ch in (_s : stdgo.Slice<stdgo.GoUInt8>)) {
                _ch = (_ch - ((48 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L265"
                if ((_ch > (9 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L266"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("Atoi" : stdgo.GoString), _s0?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                };
                _n = ((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + (_ch : stdgo.GoInt) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L270"
            if (_s0[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                _n = -_n;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L273"
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _i64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L278"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : false };
            }, _nerr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _nerr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).func = ("Atoi" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L281"
        return { _0 : (_i64 : stdgo.GoInt), _1 : _err };
    }
