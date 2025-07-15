package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{ var _0 : stdgo.Error; var _1 : stdgo.Error; } {
        var _syntax = (null : stdgo.Error), _range_ = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoc.go#L12"
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
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).func = ("ParseComplex" : stdgo.GoString);
                (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).num = stdgo._internal.strconv.Strconv__clonestring._cloneString(_s?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/strconv/atoc.go#L15"
                if (({
                    final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.strconv.Strconv_errrange.errRange;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atoc.go#L16"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Error; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Error), _1 : stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                        _syntax = __tmp__._0;
                        _range_ = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoc.go#L19"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Error; var _1 : stdgo.Error; } = { _0 : _err, _1 : (null : stdgo.Error) };
            _syntax = __tmp__._0;
            _range_ = __tmp__._1;
            __tmp__;
        };
    }
