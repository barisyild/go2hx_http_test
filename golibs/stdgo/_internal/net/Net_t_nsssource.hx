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
@:structInit @:using(stdgo._internal.net.Net_t_nsssource_static_extension.T_nssSource_static_extension) @:using(stdgo._internal.net.Net_t_nsssource_static_extension.T_nssSource_static_extension) class T_nssSource {
    public var _source : stdgo.GoString = "";
    public var _criteria : stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion> = (null : stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion>);
    public function new(?_source:stdgo.GoString, ?_criteria:stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion>) {
        if (_source != null) this._source = _source;
        if (_criteria != null) this._criteria = _criteria;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_source", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_criteria", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_nsscriteriondott_nsscriterion.__type__stdgodot_internaldotnetdotNet_t_nsscriteriondotT_nssCriterion }) }, optional : false }])));
    public function __copy__() {
        return new T_nssSource(_source, _criteria);
    }
}
