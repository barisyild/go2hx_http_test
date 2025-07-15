package _internal.context_test;
function testWithoutCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0 = @:assignType (("key" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (("value" : stdgo.GoString) : stdgo.GoString);
var _value = __1, _key = __0;
        var _ctx = @:assignType (stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
        _ctx = stdgo._internal.context.Context_withoutcancel.withoutCancel(_ctx);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L824"
        {
            var __tmp__ = _ctx.deadline(), _d:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((!_d.isZero() || (_ok != false) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L825"
                _t.errorf(("ctx.Deadline() = %v, %v want zero, false" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime)), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L827"
        {
            var _done = _ctx.done();
            if (_done != null) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L828"
                _t.errorf(("ctx.Deadline() = %v want nil" : stdgo.GoString), new stdgo.AnyInterface(_done, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(2, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L830"
        {
            var _err = @:assignType (_ctx.err() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L831"
                _t.errorf(("ctx.Err() = %v want nil" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L833"
        {
            var _v = @:assignType (_ctx.value(new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo.AnyInterface);
            if (_v != (new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L834"
                _t.errorf(("ctx.Value(%q) = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _v, new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
