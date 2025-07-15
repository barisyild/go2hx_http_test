package _internal.reflect_test;
function testSelectMaxCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _sCases:stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
            var _channel = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2005"
            if (_channel != null) _channel.__close__();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2006"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (65536 : stdgo.GoInt) : Bool)) {
                    _sCases = (_sCases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_channel, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _i++;
                };
            };
            stdgo._internal.reflect.Reflect_select.select(_sCases);
            _sCases = (_sCases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_channel, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2019"
                        {
                            var _err = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (({
                                final value = _err;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2020"
                                if ((stdgo.Go.typeAssert(_err, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString) != (("reflect.Select: too many cases (max 65536)" : stdgo.GoString))) {
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2021"
                                    _t.fatalf(("unexpected error from select call with greater than max supported cases" : stdgo.GoString));
                                };
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2024"
                                _t.fatalf(("expected select call to panic with greater than max supported cases" : stdgo.GoString));
                            };
                        };
                    };
                    a();
                }) });
            };
            stdgo._internal.reflect.Reflect_select.select(_sCases);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
