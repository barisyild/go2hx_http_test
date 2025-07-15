package _internal.reflect_test;
function testValue_Cap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 3) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 3) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7906"
        if (_v.cap() != (_a.capacity)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7907"
            _t.errorf(("Cap = %d want %d" : stdgo.GoString), new stdgo.AnyInterface(_v.cap(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _a = new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__().__setNil__();
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 3) }))))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7912"
        if (_v.cap() != (_a.capacity)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7913"
            _t.errorf(("Cap = %d want %d" : stdgo.GoString), new stdgo.AnyInterface(_v.cap(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        var _getError = @:assignType (function(_f:() -> Void):stdgo.GoString {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            var _errorStr = ("" : stdgo.GoString);
            try {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            var _e = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7919"
                            {
                                var __tmp__ = @:castTranslate try {
                                    { _0 : (stdgo.Go.typeAssert(_e, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
                                } catch(__exception__) {
                                    { _0 : ("" : stdgo.GoString), _1 : false };
                                }, _str = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _errorStr = _str?.__copy__();
                                };
                            };
                        };
                        a();
                    }) });
                };
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7923"
                _f();
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7924"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _errorStr;
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
                    return _errorStr;
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
                    return _errorStr;
                };
            };
        } : (() -> Void) -> stdgo.GoString);
        var _e = @:assignType (_getError(function():Void {
            var _ptr:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7928"
            stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_ptr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).cap();
        })?.__copy__() : stdgo.GoString);
        var _wantStr = @:assignType (("reflect: call of reflect.Value.Cap on ptr to non-array Value" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7931"
        if (_e != (_wantStr)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7932"
            _t.errorf(("error is %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_e, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_wantStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
