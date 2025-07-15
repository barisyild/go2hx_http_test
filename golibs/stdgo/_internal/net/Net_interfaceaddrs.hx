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
function interfaceAddrs():{ var _0 : stdgo.Slice<stdgo._internal.net.Net_addr.Addr>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net__interfaceaddrtable._interfaceAddrTable(null), _ifat:stdgo.Slice<stdgo._internal.net.Net_addr.Addr> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L120"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L123"
        return { _0 : _ifat, _1 : _err };
    }
