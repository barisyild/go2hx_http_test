package _internal.fmt_test;
function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error> {
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors_test.go#L99"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("unwrap", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : _internal.fmt_test.Fmt_test_t__interface_1.T__interface_1), _1 : true };
            } catch(__exception__) {
                { _0 : (null : _internal.fmt_test.Fmt_test_t__interface_1.T__interface_1), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/errors_test.go#L100"
                return _e.unwrap();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors_test.go#L102"
        return (null : stdgo.Slice<stdgo.Error>);
    }
