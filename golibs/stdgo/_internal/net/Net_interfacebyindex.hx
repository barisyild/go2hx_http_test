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
function interfaceByIndex(_index:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L132"
        if ((_index <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L133"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : stdgo._internal.net.Net__errinvalidinterfaceindex._errInvalidInterfaceIndex } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = stdgo._internal.net.Net__interfacetable._interfaceTable(_index), _ift:stdgo.Slice<stdgo._internal.net.Net_interface.Interface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L136"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L137"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = stdgo._internal.net.Net__interfacebyindex._interfaceByIndex(_ift, _index), _ifi:stdgo.Ref<stdgo._internal.net.Net_interface.Interface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L140"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L143"
        return { _0 : _ifi, _1 : _err };
    }
