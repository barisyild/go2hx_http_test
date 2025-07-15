package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool {
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L94"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L95"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L97"
        if (({
            final value = _target;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L98"
            throw new stdgo.AnyInterface(("errors: target cannot be nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _val = @:assignType (stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_target)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_value.Value);
        var _typ = @:assignType (_val.type() : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L102"
        if (((_typ.kind() != (22u32 : stdgo._internal.internal.abi.Abi_kind.Kind)) || _val.isNil() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L103"
            throw new stdgo.AnyInterface(("errors: target must be a non-nil pointer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _targetType = @:assignType (_typ.elem() : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L106"
        if (((_targetType.kind() != (20u32 : stdgo._internal.internal.abi.Abi_kind.Kind)) && !_targetType.implements_(stdgo._internal.errors.Errors__errortype._errorType) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L107"
            throw new stdgo.AnyInterface(("errors: *target must be interface or implement error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L109"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L110"
            if (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })).assignableTo(_targetType)) {
                //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L111"
                _val.elem().set(stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L112"
                return true;
            };
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L114"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("as", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.interfaceType(true, [])] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.errors.Errors_t__interface_3.T__interface_3), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.errors.Errors_t__interface_3.T__interface_3), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.as(_target) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L115"
                    return true;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L117"
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("unwrap", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_0.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L120"
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L121"
                        return false;
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("unwrap", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_2.T__interface_2) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L124"
                    if (_x.unwrap() != null) for (__0 => _err in _x.unwrap()) {
                        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L125"
                        if (stdgo._internal.errors.Errors_as.as(_err, _target)) {
                            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L126"
                            return true;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L129"
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L131"
                    return false;
                };
            };
        };
    }
