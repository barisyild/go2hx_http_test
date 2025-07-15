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
@:structInit @:using(stdgo._internal.net.Net_t_dnsconfig_static_extension.T_dnsConfig_static_extension) @:using(stdgo._internal.net.Net_t_dnsconfig_static_extension.T_dnsConfig_static_extension) class T_dnsConfig {
    public var _servers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _search : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _ndots : stdgo.GoInt = 0;
    public var _timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _attempts : stdgo.GoInt = 0;
    public var _rotate : Bool = false;
    public var _unknownOpt : Bool = false;
    public var _lookup : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _mtime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _soffset : stdgo.GoUInt32 = 0;
    public var _singleRequest : Bool = false;
    public var _useTCP : Bool = false;
    public var _trustAD : Bool = false;
    public var _noReload : Bool = false;
    public function new(?_servers:stdgo.Slice<stdgo.GoString>, ?_search:stdgo.Slice<stdgo.GoString>, ?_ndots:stdgo.GoInt, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_attempts:stdgo.GoInt, ?_rotate:Bool, ?_unknownOpt:Bool, ?_lookup:stdgo.Slice<stdgo.GoString>, ?_err:stdgo.Error, ?_mtime:stdgo._internal.time.Time_time.Time, ?_soffset:stdgo.GoUInt32, ?_singleRequest:Bool, ?_useTCP:Bool, ?_trustAD:Bool, ?_noReload:Bool) {
        if (_servers != null) this._servers = _servers;
        if (_search != null) this._search = _search;
        if (_ndots != null) this._ndots = _ndots;
        if (_timeout != null) this._timeout = _timeout;
        if (_attempts != null) this._attempts = _attempts;
        if (_rotate != null) this._rotate = _rotate;
        if (_unknownOpt != null) this._unknownOpt = _unknownOpt;
        if (_lookup != null) this._lookup = _lookup;
        if (_err != null) this._err = _err;
        if (_mtime != null) this._mtime = _mtime;
        if (_soffset != null) this._soffset = _soffset;
        if (_singleRequest != null) this._singleRequest = _singleRequest;
        if (_useTCP != null) this._useTCP = _useTCP;
        if (_trustAD != null) this._trustAD = _trustAD;
        if (_noReload != null) this._noReload = _noReload;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_servers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_search", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_ndots", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_timeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "_attempts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_rotate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_unknownOpt", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_lookup", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_mtime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "_soffset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_singleRequest", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_useTCP", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_trustAD", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_noReload", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_dnsConfig(
_servers,
_search,
_ndots,
_timeout,
_attempts,
_rotate,
_unknownOpt,
_lookup,
_err,
_mtime,
_soffset,
_singleRequest,
_useTCP,
_trustAD,
_noReload);
    }
}
