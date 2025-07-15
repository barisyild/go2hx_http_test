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
function _interfaceByIndex(_ift:stdgo.Slice<stdgo._internal.net.Net_interface.Interface>, _index:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L147"
        if (_ift != null) for (__3 => _ifi in _ift) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L148"
            if (_index == (_ifi.index)) {
                //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L149"
                return { _0 : (stdgo.Go.setRef(_ifi, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_interfacedotinterface.__type__stdgodot_internaldotnetdotNet_interfacedotInterface })) : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L152"
        return { _0 : null, _1 : stdgo._internal.net.Net__errnosuchinterface._errNoSuchInterface };
    }
