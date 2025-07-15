package _internal.reflect_test;
function _shouldPanic(_expect:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        var _r = @:assignType ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4036"
                        if (({
                            final value = _r;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4037"
                            throw new stdgo.AnyInterface(("did not panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4039"
                        if (_expect != ((stdgo.Go.str() : stdgo.GoString))) {
                            var _s:stdgo.GoString = ("" : stdgo.GoString);
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4041"
                            {
                                final __type__ = _r;
                                if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                                    var _r:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                                    _s = _r?.__copy__();
                                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valueerrordotvalueerror.__type__stdgodot_internaldotreflectdotReflect_valueerrordotValueError }))) {
                                    var _r:stdgo.Ref<stdgo._internal.reflect.Reflect_valueerror.ValueError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.reflect.Reflect_valueerror.ValueError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.reflect.Reflect_valueerror.ValueError>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.reflect.Reflect_valueerror.ValueError>) : __type__.__underlying__().value);
                                    _s = _r.error()?.__copy__();
                                } else {
                                    var _r:stdgo.AnyInterface = __type__?.__underlying__();
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4047"
                                    throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("panicked with unexpected type %T" : stdgo.GoString), _r), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4049"
                            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), ("reflect" : stdgo.GoString))) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4050"
                                throw new stdgo.AnyInterface((("panic string does not start with \"reflect\": " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4052"
                            if (!stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), _expect?.__copy__())) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4053"
                                throw new stdgo.AnyInterface((((("panic string does not contain \"" : stdgo.GoString) + _expect?.__copy__() : stdgo.GoString) + ("\": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4057"
            _f();
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
