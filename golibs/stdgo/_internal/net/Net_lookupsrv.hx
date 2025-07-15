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
function lookupSRV(_service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } {
        var _cname = ("" : stdgo.GoString), _addrs = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L497"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net_defaultresolver.defaultResolver.lookupSRV(stdgo._internal.context.Context_background.background(), _service?.__copy__(), _proto?.__copy__(), _name?.__copy__());
            { _0 : __tmp__._0, _1 : __tmp__._1, _2 : __tmp__._2 };
        });
    }
