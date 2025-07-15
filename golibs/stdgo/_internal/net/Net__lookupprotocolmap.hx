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
function _lookupProtocolMap(_name:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _lowerProtocol:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(25, 25).__setNumber32__();
        var _n = @:assignType ((_lowerProtocol.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_name) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L69"
        stdgo._internal.net.Net__lowerasciibytes._lowerASCIIBytes((_lowerProtocol.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = (stdgo._internal.net.Net__protocols._protocols != null && stdgo._internal.net.Net__protocols._protocols.__exists__(((_lowerProtocol.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()) ? { _0 : stdgo._internal.net.Net__protocols._protocols[((_lowerProtocol.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _proto:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L71"
        if ((!_found || (_n != (_name.length)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L72"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("unknown IP protocol specified" : stdgo.GoString), addr : _name?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L74"
        return { _0 : _proto, _1 : (null : stdgo.Error) };
    }
