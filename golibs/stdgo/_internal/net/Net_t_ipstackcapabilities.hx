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
@:structInit @:using(stdgo._internal.net.Net_t_ipstackcapabilities_static_extension.T_ipStackCapabilities_static_extension) @:using(stdgo._internal.net.Net_t_ipstackcapabilities_static_extension.T_ipStackCapabilities_static_extension) class T_ipStackCapabilities {
    @:embedded
    public var once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _ipv4Enabled : Bool = false;
    public var _ipv6Enabled : Bool = false;
    public var _ipv4MappedIPv6Enabled : Bool = false;
    public function new(?once:stdgo._internal.sync.Sync_once.Once, ?_ipv4Enabled:Bool, ?_ipv6Enabled:Bool, ?_ipv4MappedIPv6Enabled:Bool) {
        if (once != null) this.once = once;
        if (_ipv4Enabled != null) this._ipv4Enabled = _ipv4Enabled;
        if (_ipv6Enabled != null) this._ipv6Enabled = _ipv6Enabled;
        if (_ipv4MappedIPv6Enabled != null) this._ipv4MappedIPv6Enabled = _ipv4MappedIPv6Enabled;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "once", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_ipv4Enabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_ipv6Enabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_ipv4MappedIPv6Enabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public var do_(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_do_():(() -> Void) -> Void return @:check32 this.once.do_;
    public var _doSlow(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__doSlow():(() -> Void) -> Void return @:check32 this.once._doSlow;
    public function __copy__() {
        return new T_ipStackCapabilities(once, _ipv4Enabled, _ipv6Enabled, _ipv4MappedIPv6Enabled);
    }
}
