package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_onceError_asInterface) class T_onceError_static_extension {
    @:keep
    @:tdfield
    static public function load( _a:stdgo.Ref<stdgo._internal.io.Io_t_onceerror.T_onceError>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.io.Io_t_onceerror.T_onceError> = _a;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L30"
            _a.lock();
            {
                final __f__ = _a.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L32"
            {
                final __ret__:stdgo.Error = (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
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
    static public function store( _a:stdgo.Ref<stdgo._internal.io.Io_t_onceerror.T_onceError>, _err:stdgo.Error):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.io.Io_t_onceerror.T_onceError> = _a;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L22"
            _a.lock();
            {
                final __f__ = _a.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L24"
            if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L25"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
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
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.io.Io_t_onceerror.T_onceError, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Void return @:_5 __self__.lock();
}
