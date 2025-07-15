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
function splitHostPort(_hostport:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _host = ("" : stdgo.GoString), _port = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        {};
        var _addrErr = @:assignType (function(_addr:stdgo.GoString, _why:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
            var _host = ("" : stdgo.GoString), _port = ("" : stdgo.GoString), _err = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L170"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : _why?.__copy__(), addr : _addr?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
                _host = __tmp__._0;
                _port = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        } : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; });
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _k = __1, _j = __0;
        var _i = @:assignType (stdgo._internal.net.Net__last._last(_hostport?.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L176"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L177"
            return _addrErr(_hostport?.__copy__(), ("missing port in address" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L180"
        if (_hostport[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8))) {
            var _end = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_hostport?.__copy__(), (93 : stdgo.GoUInt8)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L183"
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L184"
                return _addrErr(_hostport?.__copy__(), ("missing \']\' in address" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L186"
            {
                final __value__ = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                if (__value__ == ((_hostport.length))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L189"
                    return _addrErr(_hostport?.__copy__(), ("missing port in address" : stdgo.GoString));
                } else if (__value__ == (_i)) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L195"
                    if (_hostport[(_end + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L196"
                        return _addrErr(_hostport?.__copy__(), ("too many colons in address" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L198"
                    return _addrErr(_hostport?.__copy__(), ("missing port in address" : stdgo.GoString));
                };
            };
            _host = (_hostport.__slice__((1 : stdgo.GoInt), _end) : stdgo.GoString)?.__copy__();
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                _j = @:binopAssign __tmp__0;
                _k = @:binopAssign __tmp__1;
            };
        } else {
            _host = (_hostport.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L204"
            if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_host?.__copy__(), (58 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L205"
                return _addrErr(_hostport?.__copy__(), ("too many colons in address" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L208"
        if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString((_hostport.__slice__(_j) : stdgo.GoString)?.__copy__(), (91 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L209"
            return _addrErr(_hostport?.__copy__(), ("unexpected \'[\' in address" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L211"
        if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString((_hostport.__slice__(_k) : stdgo.GoString)?.__copy__(), (93 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L212"
            return _addrErr(_hostport?.__copy__(), ("unexpected \']\' in address" : stdgo.GoString));
        };
        _port = (_hostport.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L216"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _host?.__copy__(), _1 : _port?.__copy__(), _2 : (null : stdgo.Error) };
            _host = __tmp__._0;
            _port = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
