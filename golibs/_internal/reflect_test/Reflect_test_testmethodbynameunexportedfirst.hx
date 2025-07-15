package _internal.reflect_test;
function testMethodByNameUnExportedFirst(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6823"
                        if (({
                            final value = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6824"
                            _t.errorf(("should not panic" : stdgo.GoString));
                        };
                    };
                    a();
                }) });
            };
            var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((0 : _internal.reflect_test.Reflect_test_unexportedfirst.UnExportedFirst), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexportedfirstdotunexportedfirst.__type___internaldotreflect_testdotReflect_test_unexportedfirstdotUnExportedFirst), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexportedfirstdotunexportedfirst.__type___internaldotreflect_testdotReflect_test_unexportedfirstdotUnExportedFirst))) : stdgo._internal.reflect.Reflect_type_.Type_);
            var __tmp__ = _typ.methodByName(("ΦExported" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_method.Method = __tmp__._0, __1:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6829"
            if (_m.name != (("ΦExported" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6830"
                _t.errorf(("got %s, expected ΦExported" : stdgo.GoString), new stdgo.AnyInterface(_m.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
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
