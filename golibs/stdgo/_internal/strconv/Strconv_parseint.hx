package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _i = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {};
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L205"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L206"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseInt" : stdgo.GoString), _s?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                _i = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _s0 = @:assignType (_s?.__copy__() : stdgo.GoString);
        var _neg = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L212"
        if (_s[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _neg = true;
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _un:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), _base, _bitSize);
            _un = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L222"
        if (((_err != null) && (({
            final __t__ = (@:checkr (stdgo.Go.typeAssert(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = stdgo._internal.strconv.Strconv_errrange.errRange;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            (@:checkr (stdgo.Go.typeAssert(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).func = ("ParseInt" : stdgo.GoString);
            (@:checkr (stdgo.Go.typeAssert(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).num = stdgo._internal.strconv.Strconv__clonestring._cloneString(_s0?.__copy__())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L225"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
                _i = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L228"
        if (_bitSize == ((0 : stdgo.GoInt))) {
            _bitSize = (32 : stdgo.GoInt);
        };
        var _cutoff = @:assignType (((1i64 : stdgo.GoUInt64) << ((_bitSize - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L233"
        if ((!_neg && (_un >= _cutoff : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L234"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : ((_cutoff - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseInt" : stdgo.GoString), _s0?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                _i = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L236"
        if ((_neg && (_un > _cutoff : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L237"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : -(_cutoff : stdgo.GoInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseInt" : stdgo.GoString), _s0?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                _i = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _n = @:assignType (_un : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L240"
        if (_neg) {
            _n = -_n;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L243"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _i = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
