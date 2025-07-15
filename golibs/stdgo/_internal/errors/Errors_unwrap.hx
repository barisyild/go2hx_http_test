package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
function unwrap(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("unwrap", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.errors.Errors_t__interface_0.T__interface_0), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.errors.Errors_t__interface_0.T__interface_0), _1 : false };
        }, _u = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L21"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L22"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/errors/wrap.go#L24"
        return _u.unwrap();
    }
