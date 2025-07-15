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
function _selfConnect(_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>, _err:stdgo.Error):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L119"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L120"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L131"
        if ((((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr == null) || ((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L132"
            return true;
        };
        var _l = (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        var _r = (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L136"
        return (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port == (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port) && (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.equal((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP) : Bool);
    }
