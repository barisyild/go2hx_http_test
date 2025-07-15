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
@:keep class T_sockaddr_static_extension {
    @:interfacetypeffun
    static public function _toLocal(t:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _net:stdgo.GoString):stdgo._internal.net.Net_t_sockaddr.T_sockaddr return t._toLocal(_net);
    @:interfacetypeffun
    static public function _sockaddr(t:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _family:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return t._sockaddr(_family);
    @:interfacetypeffun
    static public function _isWildcard(t:stdgo._internal.net.Net_t_sockaddr.T_sockaddr):Bool return t._isWildcard();
    @:interfacetypeffun
    static public function _family(t:stdgo._internal.net.Net_t_sockaddr.T_sockaddr):stdgo.GoInt return t._family();
}
