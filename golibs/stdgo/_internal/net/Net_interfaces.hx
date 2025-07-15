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
function interfaces():{ var _0 : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net__interfacetable._interfaceTable((0 : stdgo.GoInt)), _ift:stdgo.Slice<stdgo._internal.net.Net_interface.Interface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L104"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L105"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L107"
        if ((_ift.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L108"
            stdgo._internal.net.Net__zonecache._zoneCache._update(_ift, false);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L110"
        return { _0 : _ift, _1 : (null : stdgo.Error) };
    }
