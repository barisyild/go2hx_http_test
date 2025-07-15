package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
function _readServices():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.net.Net__open._open(("/etc/services" : stdgo.GoString)), _file:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L20"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L21"
                return;
            };
            {
                final __f__ = _file._close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L25"
            {
                var __tmp__ = _file._readLine(), _line:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                while (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L27"
                    {
                        var _i = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_line.__copy__(), (35 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            _line = (_line.__slice__(0, _i) : stdgo.GoString).__copy__();
                        };
                    };
var _f = stdgo._internal.net.Net__getfields._getFields(_line.__copy__());
//"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L31"
                    if (((_f.length) < (2 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L32"
                        {
                            {
                                var __tmp__ = _file._readLine();
                                _line = @:tmpset0 __tmp__._0?.__copy__();
                                _ok = @:tmpset0 __tmp__._1;
                            };
                            continue;
                        };
                    };
var _portnet = @:assignType (_f[(1 : stdgo.GoInt)].__copy__() : stdgo.GoString);
var __tmp__ = stdgo._internal.net.Net__dtoi._dtoi(_portnet.__copy__()), _port:stdgo.GoInt = __tmp__._0, _j:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
//"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L36"
                    if ((((!_ok || (_port <= (0 : stdgo.GoInt) : Bool) : Bool) || (_j >= (_portnet.length) : Bool) : Bool) || (_portnet[(_j : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L37"
                        {
                            {
                                var __tmp__ = _file._readLine();
                                _line = @:tmpset0 __tmp__._0?.__copy__();
                                _ok = @:tmpset0 __tmp__._1;
                            };
                            continue;
                        };
                    };
var _netw = @:assignType ((_portnet.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() : stdgo.GoString);
var __tmp__ = (stdgo._internal.net.Net__services._services != null && stdgo._internal.net.Net__services._services.__exists__(_netw.__copy__()) ? { _0 : stdgo._internal.net.Net__services._services[_netw.__copy__()], _1 : true } : { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _1 : false }), _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = __tmp__._0, _ok1:Bool = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L41"
                    if (!_ok1) {
                        _m = (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
                        stdgo._internal.net.Net__services._services[_netw] = _m;
                    };
//"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L45"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (_f.length) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/port_unix.go#L46"
                            if (_i != ((1 : stdgo.GoInt))) {
                                _m[_f[(_i : stdgo.GoInt)]] = _port;
                            };
                            _i++;
                        };
                    };
                    {
                        var __tmp__ = _file._readLine();
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _ok = @:tmpset0 __tmp__._1;
                    };
                };
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
