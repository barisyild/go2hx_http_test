package _internal.reflect_test;
function testFieldByIndexNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {};
            {};
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_t_testfieldbyindexnil___localname___t_170039.T_testFieldByIndexNil___localname___T_170039() : _internal.reflect_test.Reflect_test_t_testfieldbyindexnil___localname___t_170039.T_testFieldByIndexNil___localname___T_170039), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testfieldbyindexnil___localname___t_170039dott_testfieldbyindexnil___localname___t_170039.__type___internaldotreflect_testdotReflect_test_t_testfieldbyindexnil___localname___t_170039dotT_testFieldByIndexNil___localname___T_170039), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testfieldbyindexnil___localname___t_170039dott_testfieldbyindexnil___localname___t_170039.__type___internaldotreflect_testdotReflect_test_t_testfieldbyindexnil___localname___t_170039dotT_testFieldByIndexNil___localname___T_170039)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6555"
            _v.fieldByName(("P" : stdgo.GoString));
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6558"
                        {
                            var _err = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (({
                                final value = _err;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6559"
                                _t.fatalf(("no error" : stdgo.GoString));
                            } else if (!stdgo._internal.strings.Strings_contains.contains(stdgo._internal.fmt.Fmt_sprint.sprint(_err)?.__copy__(), ("nil pointer to embedded struct" : stdgo.GoString))) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6561"
                                _t.fatalf(("err=%q, wanted error containing \"nil pointer to embedded struct\"" : stdgo.GoString), _err);
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6564"
            _v.fieldByName(("F" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6566"
            _t.fatalf(("did not panic" : stdgo.GoString));
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
