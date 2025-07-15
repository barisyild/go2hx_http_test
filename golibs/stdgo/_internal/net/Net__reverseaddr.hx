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
function _reverseaddr(_addr:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _arpa = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _ip = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_addr?.__copy__()) : stdgo._internal.net.Net_ip.IP);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L31"
        if (_ip == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L32"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("unrecognized address" : stdgo.GoString), name : _addr?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                _arpa = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L34"
        if (_ip.to4() != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L35"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (((((((stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_ip[(15 : stdgo.GoInt)] : stdgo.GoUInt)) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_ip[(14 : stdgo.GoInt)] : stdgo.GoUInt))?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_ip[(13 : stdgo.GoInt)] : stdgo.GoUInt))?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_ip[(12 : stdgo.GoInt)] : stdgo.GoUInt))?.__copy__() : stdgo.GoString) + (".in-addr.arpa." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                _arpa = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((_ip.length) * (4 : stdgo.GoInt) : stdgo.GoInt) + ((("ip6.arpa." : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L40"
        {
            var _i = @:assignType ((_ip.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (_ip[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_v & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], (46 : stdgo.GoUInt8), ("0123456789abcdef" : stdgo.GoString)[((_v >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], (46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _i--;
            };
        };
        _buf = (_buf.__append__(...((("ip6.arpa." : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L49"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_buf : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            _arpa = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
