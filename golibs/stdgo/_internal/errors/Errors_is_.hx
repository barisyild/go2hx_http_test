package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool {
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L45"
        if (_target == null) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L46"
            return ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _target;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _isComparable = @:assignType (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(({
            final __t__ = _target;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).comparable_() : Bool);
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L50"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L51"
            if ((_isComparable && (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == ({
                final __t__ = _target;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L52"
                return true;
            };
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L54"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("is_", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.errors.Errors_t__interface_1.T__interface_1), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.errors.Errors_t__interface_1.T__interface_1), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.is_(_target) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L55"
                    return true;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L57"
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
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L60"
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L61"
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
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L64"
                    if (_x.unwrap() != null) for (__0 => _err in _x.unwrap()) {
                        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L65"
                        if (stdgo._internal.errors.Errors_is_.is_(_err, _target)) {
                            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L66"
                            return true;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L69"
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L71"
                    return false;
                };
            };
        };
    }
