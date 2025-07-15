package _internal.context_test;
function testBackground(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L60"
        if (_c == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L61"
            _t.fatalf(("Background returned nil" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L63"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = _c.done();
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        var _x = __c__0.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L65"
                            _t.errorf(("<-c.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L68"
        {
            var __0 = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(({
                final __t__ = _c;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))?.__copy__() : stdgo.GoString), __1 = @:assignType (("context.Background" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L69"
                _t.errorf(("Background().String() = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
