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
function _readHosts():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _now = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            var _hp = @:assignType (stdgo._internal.net.Net__testhookhostspath._testHookHostsPath?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L56"
            if (((_now.before(stdgo._internal.net.Net__hosts._hosts._expire?.__copy__()) && stdgo._internal.net.Net__hosts._hosts._path == (_hp) : Bool) && ((stdgo._internal.net.Net__hosts._hosts._byName.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L57"
                return;
            };
            var __tmp__ = stdgo._internal.net.Net__stat._stat(_hp?.__copy__()), _mtime:stdgo._internal.time.Time_time.Time = __tmp__._0, _size:stdgo.GoInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L60"
            if ((((_err == null && stdgo._internal.net.Net__hosts._hosts._path == (_hp) : Bool) && stdgo._internal.net.Net__hosts._hosts._mtime.equal(_mtime?.__copy__()) : Bool) && (stdgo._internal.net.Net__hosts._hosts._size == _size) : Bool)) {
                stdgo._internal.net.Net__hosts._hosts._expire = _now.add((5000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L62"
                return;
            };
            var _hs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.Net_t_byname.T_byName>();
                x.__defaultValue__ = () -> ({} : stdgo._internal.net.Net_t_byname.T_byName);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.Net_t_byname.T_byName>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.Net_t_byname.T_byName>);
            var _is = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
            var __tmp__ = stdgo._internal.net.Net__open._open(_hp?.__copy__()), _file:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L69"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L70"
                if ((!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errnotexist.errNotExist) && !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errpermission.errPermission) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L71"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L75"
            if (({
                final value = _file;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                {
                    final __f__ = _file._close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L77"
                {
                    var __tmp__ = _file._readLine(), _line:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    while (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L78"
                        {
                            var _i = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_line.__copy__(), (35 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _line = (_line.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__();
                            };
                        };
var _f = stdgo._internal.net.Net__getfields._getFields(_line.__copy__());
//"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L83"
                        if (((_f.length) < (2 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L84"
                            {
                                {
                                    var __tmp__ = _file._readLine();
                                    _line = @:tmpset0 __tmp__._0?.__copy__();
                                    _ok = @:tmpset0 __tmp__._1;
                                };
                                continue;
                            };
                        };
var _addr = @:assignType (stdgo._internal.net.Net__parseliteralip._parseLiteralIP(_f[(0 : stdgo.GoInt)].__copy__()).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L87"
                        if (_addr == ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L88"
                            {
                                {
                                    var __tmp__ = _file._readLine();
                                    _line = @:tmpset0 __tmp__._0?.__copy__();
                                    _ok = @:tmpset0 __tmp__._1;
                                };
                                continue;
                            };
                        };
var _canonical:stdgo.GoString = ("" : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L92"
                        {
                            var _i = @:assignType (1 : stdgo.GoInt);
                            while ((_i < (_f.length) : Bool)) {
                                var _name = @:assignType (stdgo._internal.net.Net__absdomainname._absDomainName(_f[(_i : stdgo.GoInt)].__copy__()).__copy__() : stdgo.GoString);
var _h = (_f[(_i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L95"
                                stdgo._internal.net.Net__lowerasciibytes._lowerASCIIBytes(_h);
var _key = @:assignType (stdgo._internal.net.Net__absdomainname._absDomainName((_h : stdgo.GoString).__copy__()).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L98"
                                if (_i == ((1 : stdgo.GoInt))) {
                                    _canonical = _key.__copy__();
                                };
_is[_addr] = ((_is[_addr] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_name.__copy__()) : stdgo.Slice<stdgo.GoString>);
//"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L104"
                                {
                                    var __tmp__ = (_hs != null && _hs.__exists__(_key.__copy__()) ? { _0 : _hs[_key.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.Net_t_byname.T_byName), _1 : false }), _v:stdgo._internal.net.Net_t_byname.T_byName = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        _hs[_key] = ({ _addrs : (_v._addrs.__append__(_addr.__copy__()) : stdgo.Slice<stdgo.GoString>), _canonicalName : _v._canonicalName.__copy__() } : stdgo._internal.net.Net_t_byname.T_byName);
                                        //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L109"
                                        {
                                            _i++;
                                            continue;
                                        };
                                    };
                                };
_hs[_key] = ({ _addrs : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_addr.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _canonicalName : _canonical.__copy__() } : stdgo._internal.net.Net_t_byname.T_byName);
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
            };
            stdgo._internal.net.Net__hosts._hosts._expire = _now.add((5000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__();
            stdgo._internal.net.Net__hosts._hosts._path = _hp?.__copy__();
            stdgo._internal.net.Net__hosts._hosts._byName = _hs;
            stdgo._internal.net.Net__hosts._hosts._byAddr = _is;
            stdgo._internal.net.Net__hosts._hosts._mtime = _mtime?.__copy__();
            stdgo._internal.net.Net__hosts._hosts._size = _size;
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
