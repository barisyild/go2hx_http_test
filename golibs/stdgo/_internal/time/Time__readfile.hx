package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.time.Time__open._open(_name?.__copy__()), _f:stdgo.GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L575"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L576"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            {
                var _a0 = _f;
                final __f__ = stdgo._internal.time.Time__closefd._closefd;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096).__setNumber32__(), _ret:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _n:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L584"
            while (true) {
                {
                    var __tmp__ = stdgo._internal.time.Time__read._read(_f, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L586"
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _ret = (_ret.__append__(...((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L589"
                if (((_n == (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L590"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L592"
                if (((_ret.length) > (10485760 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L593"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((_name : stdgo._internal.time.Time_t_filesizeerror.T_fileSizeError), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_filesizeerrordott_filesizeerror.__type__stdgodot_internaldottimedotTime_t_filesizeerrordotT_fileSizeError) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L596"
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _ret, _1 : _err };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        };
    }
