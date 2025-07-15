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
function _fakeUnixAddr(_sotype:stdgo.GoInt, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> {
        var _net:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L92"
        if (({
            final value = _addr;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _name = (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L95"
        {
            final __value__ = _sotype;
            if (__value__ == ((2 : stdgo.GoInt))) {
                _net = ("unixgram" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                _net = ("unixpacket" : stdgo.GoString);
            } else {
                _net = ("unix" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L103"
        return (stdgo.Go.setRef(({ net : _net?.__copy__(), name : _name?.__copy__() } : stdgo._internal.net.Net_unixaddr.UnixAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
    }
