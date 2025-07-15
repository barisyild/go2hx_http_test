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
@:structInit @:using(stdgo._internal.net.Net_t_nssconf_static_extension.T_nssConf_static_extension) @:using(stdgo._internal.net.Net_t_nssconf_static_extension.T_nssConf_static_extension) class T_nssConf {
    public var _mtime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _sources : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>>);
    public function new(?_mtime:stdgo._internal.time.Time_time.Time, ?_err:stdgo.Error, ?_sources:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>>) {
        if (_mtime != null) this._mtime = _mtime;
        if (_err != null) this._err = _err;
        if (_sources != null) this._sources = _sources;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mtime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_sources", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_nsssourcedott_nsssource.__type__stdgodot_internaldotnetdotNet_t_nsssourcedotT_nssSource }) }) }, optional : false }])));
    public function __copy__() {
        return new T_nssConf(_mtime, _err, _sources);
    }
}
