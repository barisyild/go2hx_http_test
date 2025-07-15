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
@:structInit @:using(stdgo._internal.net.Net_t_nsswitchconfig_static_extension.T_nsswitchConfig_static_extension) @:using(stdgo._internal.net.Net_t_nsswitchconfig_static_extension.T_nsswitchConfig_static_extension) class T_nsswitchConfig {
    public var _initOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _ch : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _lastChecked : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _nssConf : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf> = (null : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>);
    public function new(?_initOnce:stdgo._internal.sync.Sync_once.Once, ?_ch:stdgo.Chan<{ }>, ?_lastChecked:stdgo._internal.time.Time_time.Time, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_nssConf:stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>) {
        if (_initOnce != null) this._initOnce = _initOnce;
        if (_ch != null) this._ch = _ch;
        if (_lastChecked != null) this._lastChecked = _lastChecked;
        if (_mu != null) this._mu = _mu;
        if (_nssConf != null) this._nssConf = _nssConf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_initOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_ch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_lastChecked", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_nssConf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_nssconfdott_nssconf.__type__stdgodot_internaldotnetdotNet_t_nssconfdotT_nssConf }) }, optional : false }])));
    public function __copy__() {
        return new T_nsswitchConfig(_initOnce, _ch, _lastChecked, _mu, _nssConf);
    }
}
