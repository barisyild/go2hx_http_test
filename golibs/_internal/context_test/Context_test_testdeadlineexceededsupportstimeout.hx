package _internal.context_test;
function testDeadlineExceededSupportsTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("timeout", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : _internal.context_test.Context_test_t__interface_5.T__interface_5), _1 : true };
        } catch(__exception__) {
            { _0 : (null : _internal.context_test.Context_test_t__interface_5.T__interface_5), _1 : false };
        }, _i = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L559"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L560"
            _t.fatal(new stdgo.AnyInterface(("DeadlineExceeded does not support Timeout interface" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L562"
        if (!_i.timeout()) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L563"
            _t.fatal(new stdgo.AnyInterface(("wrong value for timeout" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
