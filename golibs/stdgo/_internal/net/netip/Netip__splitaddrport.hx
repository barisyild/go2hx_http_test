package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _splitAddrPort(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } {
        var _ip = ("" : stdgo.GoString), _port = ("" : stdgo.GoString), _v6 = false, _err = (null : stdgo.Error);
        var _i = @:assignType (stdgo._internal.net.netip.Netip__stringslastindexbyte._stringsLastIndexByte(_s?.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1047"
        if (_i == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1048"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false, _3 : stdgo._internal.errors.Errors_new_.new_(("not an ip:port" : stdgo.GoString)) };
                _ip = __tmp__._0;
                _port = __tmp__._1;
                _v6 = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        {
            final __tmp__0 = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            final __tmp__1 = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _ip = @:binopAssign __tmp__0;
            _port = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1052"
        if ((_ip.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1053"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false, _3 : stdgo._internal.errors.Errors_new_.new_(("no IP" : stdgo.GoString)) };
                _ip = __tmp__._0;
                _port = __tmp__._1;
                _v6 = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1055"
        if ((_port.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1056"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false, _3 : stdgo._internal.errors.Errors_new_.new_(("no port" : stdgo.GoString)) };
                _ip = __tmp__._0;
                _port = __tmp__._1;
                _v6 = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1058"
        if (_ip[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1059"
            if ((((_ip.length) < (2 : stdgo.GoInt) : Bool) || (_ip[((_ip.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1060"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false, _3 : stdgo._internal.errors.Errors_new_.new_(("missing ]" : stdgo.GoString)) };
                    _ip = __tmp__._0;
                    _port = __tmp__._1;
                    _v6 = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            _ip = (_ip.__slice__((1 : stdgo.GoInt), ((_ip.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _v6 = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1066"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _ip?.__copy__(), _1 : _port?.__copy__(), _2 : _v6, _3 : (null : stdgo.Error) };
            _ip = __tmp__._0;
            _port = __tmp__._1;
            _v6 = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
