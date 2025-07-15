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
function resolveUnixAddr(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L58"
        {
            final __value__ = _network;
            if (__value__ == (("unix" : stdgo.GoString)) || __value__ == (("unixgram" : stdgo.GoString)) || __value__ == (("unixpacket" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L60"
                return { _0 : (stdgo.Go.setRef(({ name : _address?.__copy__(), net : _network?.__copy__() } : stdgo._internal.net.Net_unixaddr.UnixAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _1 : (null : stdgo.Error) };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L62"
                return { _0 : null, _1 : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
    }
