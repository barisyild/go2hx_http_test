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
function _parseIP(_s:stdgo.GoString):{ var _0 : stdgo.GoArray<stdgo.GoUInt8>; var _1 : Bool; } {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L503"
        if (((_err != null) || (_ip.zone() != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L504"
            return { _0 : (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L506"
        return { _0 : _ip.as16()?.__copy__(), _1 : true };
    }
