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
@:structInit @:using(stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension) @:using(stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension) class T_fakeNetFD {
    public var _listener : stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr = ({} : stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr);
    public var _r : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = (null : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
    public var _w : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = (null : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
    public var _incoming : stdgo.Chan<stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>>);
    public var _closedMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _closed : Bool = false;
    public function new(?_listener:stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr, ?_r:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, ?_w:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, ?_incoming:stdgo.Chan<stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>>, ?_closedMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_closed:Bool) {
        if (_listener != null) this._listener = _listener;
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
        if (_incoming != null) this._incoming = _incoming;
        if (_closedMu != null) this._closedMu = _closedMu;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_listener", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_fakenetaddrdott_fakenetaddr.__type__stdgodot_internaldotnetdotNet_t_fakenetaddrdotT_fakeNetAddr }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_bufferedpipedott_bufferedpipe.__type__stdgodot_internaldotnetdotNet_t_bufferedpipedotT_bufferedPipe }) }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_bufferedpipedott_bufferedpipe.__type__stdgodot_internaldotnetdotNet_t_bufferedpipedotT_bufferedPipe }) }, optional : false }, { name : "_incoming", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD }) }) }, optional : false }, { name : "_closedMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_closed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_fakeNetFD(_listener, _r, _w, _incoming, _closedMu, _closed);
    }
}
