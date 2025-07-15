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
function interfaceByName(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L157"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L158"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : stdgo._internal.net.Net__errinvalidinterfacename._errInvalidInterfaceName } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = stdgo._internal.net.Net__interfacetable._interfaceTable((0 : stdgo.GoInt)), _ift:stdgo.Slice<stdgo._internal.net.Net_interface.Interface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L161"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L162"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L164"
        if ((_ift.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L165"
            stdgo._internal.net.Net__zonecache._zoneCache._update(_ift, false);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L167"
        if (_ift != null) for (__3 => _ifi in _ift) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L168"
            if (_name == (_ifi.name)) {
                //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L169"
                return { _0 : (stdgo.Go.setRef(_ifi, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_interfacedotinterface.__type__stdgodot_internaldotnetdotNet_interfacedotInterface })) : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L172"
        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("route" : stdgo.GoString), net : ("ip+net" : stdgo.GoString), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : stdgo._internal.net.Net__errnosuchinterface._errNoSuchInterface } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
    }
