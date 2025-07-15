package _internal.context_test;
@:keep @:allow(_internal.context_test.Context_test.T_afterFuncContext_asInterface) class T_afterFuncContext_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>, _err:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L68"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L70"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L71"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L74"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs != null) for (__0 => _f in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs) {
                //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L75"
                {
                    {};
                    stdgo.Go.routine(() -> _f());
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs = (null : stdgo.GoMap<stdgo.Ref<_internal.context_test.Context_test_t__struct_17.T__struct_17>, () -> Void>);
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
    @:keep
    @:tdfield
    static public function afterFunc( _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>, _f:() -> Void):() -> Bool {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L51"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _k = (stdgo.Go.setRef(({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([]) })) : stdgo.Ref<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L54"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs == null) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<_internal.context_test.Context_test_t__struct_17.T__struct_17>, () -> Void>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<_internal.context_test.Context_test_t__struct_17.T__struct_17>, () -> Void>);
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs[_k] = _f;
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L58"
            {
                final __ret__:() -> Bool = function():Bool {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L59"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                        {
                            final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        var __tmp__ = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs != null && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs.__exists__(_k) ? { _0 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs[_k], _1 : true } : { _0 : null, _1 : false }), __0:() -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L62"
                        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs != null) (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs.__remove__(_k);
                        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L63"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _ok;
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
                            return false;
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
                            return false;
                        };
                    };
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return null;
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
                return null;
            };
        };
    }
    @:keep
    @:tdfield
    static public function value( _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L47"
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function err( _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>):stdgo.Error {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L41"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L43"
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function done( _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>):stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17> {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L32"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L34"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done == null) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done = (new stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>(0, () -> ({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17)) : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            };
            //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L37"
            {
                final __ret__:stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17> = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
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
                return (null : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function deadline( _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L28"
        return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : false };
    }
}
