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
function parseCIDR(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_ip.IP; var _1 : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>; var _2 : stdgo.Error; } {
        var _i = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_s?.__copy__(), (47 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L519"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L520"
            return { _0 : null, _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ type : ("CIDR address" : stdgo.GoString), text : _s?.__copy__() } : stdgo._internal.net.Net_parseerror.ParseError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) };
        };
        var __0 = @:assignType ((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = @:assignType ((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _mask = __1, _addr = __0;
        var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_addr?.__copy__()), _ipAddr:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L525"
        if (((_err != null) || (_ipAddr.zone() != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L526"
            return { _0 : null, _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ type : ("CIDR address" : stdgo.GoString), text : _s?.__copy__() } : stdgo._internal.net.Net_parseerror.ParseError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) };
        };
        var __tmp__ = stdgo._internal.net.Net__dtoi._dtoi(_mask?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _i:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L530"
        if ((((!_ok || _i != ((_mask.length)) : Bool) || (_n < (0 : stdgo.GoInt) : Bool) : Bool) || (_n > _ipAddr.bitLen() : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L531"
            return { _0 : null, _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ type : ("CIDR address" : stdgo.GoString), text : _s?.__copy__() } : stdgo._internal.net.Net_parseerror.ParseError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) };
        };
        var _m = @:assignType (stdgo._internal.net.Net_cidrmask.cIDRMask(_n, _ipAddr.bitLen()) : stdgo._internal.net.Net_ipmask.IPMask);
        var _addr16 = _ipAddr.as16()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L535"
        return { _0 : ((_addr16.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.net.Net_ip.IP), _1 : (stdgo.Go.setRef(({ iP : ((_addr16.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.net.Net_ip.IP).mask(_m), mask : _m } : stdgo._internal.net.Net_ipnet.IPNet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet })) : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>), _2 : (null : stdgo.Error) };
    }
