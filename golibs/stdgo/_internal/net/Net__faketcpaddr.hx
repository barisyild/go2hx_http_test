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
function _fakeTCPAddr(_addr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> {
        var _ip:stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
        var _port:stdgo.GoInt = (0 : stdgo.GoInt);
        var _zone:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L72"
        if (({
            final value = _addr;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            {
                final __tmp__0 = (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP;
                final __tmp__1 = (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port;
                final __tmp__2 = (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__();
                _ip = @:binopAssign __tmp__0;
                _port = @:binopAssign __tmp__1;
                _zone = @:binopAssign __tmp__2;
            };
        };
        {
            var __tmp__ = stdgo._internal.net.Net__fakeipandport._fakeIPAndPort(_ip, _port);
            _ip = @:tmpset0 __tmp__._0;
            _port = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L76"
        return (stdgo.Go.setRef(({ iP : _ip, port : _port, zone : _zone?.__copy__() } : stdgo._internal.net.Net_tcpaddr.TCPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
    }
