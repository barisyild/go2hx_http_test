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
function _lookupPortMap(_network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _port = (0 : stdgo.GoInt), _error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L85"
        {
            final __value__ = _network;
            if (__value__ == (("tcp4" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString))) {
                _network = ("tcp" : stdgo.GoString);
            } else if (__value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {
                _network = ("udp" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L92"
        {
            var __tmp__ = (stdgo._internal.net.Net__services._services != null && stdgo._internal.net.Net__services._services.__exists__(_network?.__copy__()) ? { _0 : stdgo._internal.net.Net__services._services[_network?.__copy__()], _1 : true } : { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _1 : false }), _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var _lowerService:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(25, 25).__setNumber32__();
                var _n = @:assignType ((_lowerService.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_service) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L95"
                stdgo._internal.net.Net__lowerasciibytes._lowerASCIIBytes((_lowerService.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L96"
                {
                    var __tmp__ = (_m != null && _m.__exists__(((_lowerService.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()) ? { _0 : _m[((_lowerService.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _port:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if ((_ok && (_n == (_service.length)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L97"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _port, _1 : (null : stdgo.Error) };
                            _port = __tmp__._0;
                            _error = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L100"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("unknown port" : stdgo.GoString), addr : ((_network + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _service?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
            _port = __tmp__._0;
            _error = __tmp__._1;
            __tmp__;
        };
    }
