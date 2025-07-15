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
@:structInit @:using(stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension) @:using(stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension) class TCPListener {
    public var _fd : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>);
    public var _lc : stdgo._internal.net.Net_listenconfig.ListenConfig = ({} : stdgo._internal.net.Net_listenconfig.ListenConfig);
    public function new(?_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>, ?_lc:stdgo._internal.net.Net_listenconfig.ListenConfig) {
        if (_fd != null) this._fd = _fd;
        if (_lc != null) this._lc = _lc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD }) }, optional : false }, { name : "_lc", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_listenconfigdotlistenconfig.__type__stdgodot_internaldotnetdotNet_listenconfigdotListenConfig }, optional : false }])));
    public function __copy__() {
        return new TCPListener(_fd, _lc);
    }
}
