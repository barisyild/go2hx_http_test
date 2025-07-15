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
@:keep @:allow(stdgo._internal.net.Net.T_ipv6ZoneCache_asInterface) class T_ipv6ZoneCache_static_extension {
    @:keep
    @:tdfield
    static public function _index( _zc:stdgo.Ref<stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _zc:stdgo.Ref<stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache> = _zc;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L242"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L243"
            return (0 : stdgo.GoInt);
        };
        var _updated = @:assignType (stdgo._internal.net.Net__zonecache._zoneCache._update((null : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>), false) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L246"
        stdgo._internal.net.Net__zonecache._zoneCache.rLock();
        var __tmp__ = (stdgo._internal.net.Net__zonecache._zoneCache._toIndex != null && stdgo._internal.net.Net__zonecache._zoneCache._toIndex.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.net.Net__zonecache._zoneCache._toIndex[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _index:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L248"
        stdgo._internal.net.Net__zonecache._zoneCache.rUnlock();
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L249"
        if ((!_ok && !_updated : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L250"
            stdgo._internal.net.Net__zonecache._zoneCache._update((null : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>), true);
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L251"
            stdgo._internal.net.Net__zonecache._zoneCache.rLock();
            {
                var __tmp__ = (stdgo._internal.net.Net__zonecache._zoneCache._toIndex != null && stdgo._internal.net.Net__zonecache._zoneCache._toIndex.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.net.Net__zonecache._zoneCache._toIndex[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false });
                _index = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L253"
            stdgo._internal.net.Net__zonecache._zoneCache.rUnlock();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L255"
        if (!_ok) {
            {
                var __tmp__ = stdgo._internal.net.Net__dtoi._dtoi(_name?.__copy__());
                _index = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L258"
        return _index;
    }
    @:keep
    @:tdfield
    static public function _name( _zc:stdgo.Ref<stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache>, _index:stdgo.GoInt):stdgo.GoString {
        @:recv var _zc:stdgo.Ref<stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache> = _zc;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L222"
        if (_index == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L223"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _updated = @:assignType (stdgo._internal.net.Net__zonecache._zoneCache._update((null : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>), false) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L226"
        stdgo._internal.net.Net__zonecache._zoneCache.rLock();
        var __tmp__ = (stdgo._internal.net.Net__zonecache._zoneCache._toName != null && stdgo._internal.net.Net__zonecache._zoneCache._toName.__exists__(_index) ? { _0 : stdgo._internal.net.Net__zonecache._zoneCache._toName[_index], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _name:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L228"
        stdgo._internal.net.Net__zonecache._zoneCache.rUnlock();
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L229"
        if ((!_ok && !_updated : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L230"
            stdgo._internal.net.Net__zonecache._zoneCache._update((null : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>), true);
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L231"
            stdgo._internal.net.Net__zonecache._zoneCache.rLock();
            {
                var __tmp__ = (stdgo._internal.net.Net__zonecache._zoneCache._toName != null && stdgo._internal.net.Net__zonecache._zoneCache._toName.__exists__(_index) ? { _0 : stdgo._internal.net.Net__zonecache._zoneCache._toName[_index], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                _name = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L233"
            stdgo._internal.net.Net__zonecache._zoneCache.rUnlock();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L235"
        if (!_ok) {
            _name = stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_index : stdgo.GoUInt))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L238"
        return _name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _update( _zc:stdgo.Ref<stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache>, _ift:stdgo.Slice<stdgo._internal.net.Net_interface.Interface>, _force:Bool):Bool {
        @:recv var _zc:stdgo.Ref<stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache> = _zc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _updated = false;
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L197"
            _zc.lock();
            {
                final __f__ = _zc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _now = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L200"
            if ((!_force && (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFetched.after(_now.add((-60000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L201"
                {
                    final __ret__:Bool = _updated = false;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFetched = _now?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L204"
            if ((_ift.length) == ((0 : stdgo.GoInt))) {
                var _err:stdgo.Error = (null : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L206"
                {
                    {
                        var __tmp__ = stdgo._internal.net.Net__interfacetable._interfaceTable((0 : stdgo.GoInt));
                        _ift = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L207"
                        {
                            final __ret__:Bool = _updated = false;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toIndex = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toName = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L212"
            if (_ift != null) for (__3 => _ifi in _ift) {
                (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toIndex[_ifi.name] = _ifi.index;
                //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L214"
                {
                    var __tmp__ = ((@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toName != null && (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toName.__exists__(_ifi.index) ? { _0 : (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toName[_ifi.index], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __4:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        (@:checkr _zc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toName[_ifi.index] = _ifi.name?.__copy__();
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L218"
            {
                final __ret__:Bool = _updated = true;
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
                return _updated;
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
                return _updated;
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _rUnlockSlow( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache, _0:stdgo.GoInt32):Void return @:_5 __self__._rUnlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryRLock( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Bool return @:_5 __self__.tryRLock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function rUnlock( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void return @:_5 __self__.rUnlock();
    @:embedded
    @:embeddededffieldsffun
    public static function rLocker( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):stdgo._internal.sync.Sync_locker.Locker return @:_5 __self__.rLocker();
    @:embedded
    @:embeddededffieldsffun
    public static function rLock( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void return @:_5 __self__.rLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void return @:_5 __self__.lock();
}
