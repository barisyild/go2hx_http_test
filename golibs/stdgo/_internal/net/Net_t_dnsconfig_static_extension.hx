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
@:keep @:allow(stdgo._internal.net.Net.T_dnsConfig_asInterface) class T_dnsConfig_static_extension {
    @:keep
    @:tdfield
    static public function _serverOffset( _c:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):stdgo.GoUInt32 {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsconfig.go#L41"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rotate) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsconfig.go#L42"
            return (stdgo._internal.sync.atomic_.Atomic__adduint32.addUint32(stdgo.Go.pointer((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._soffset), (1u32 : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsconfig.go#L44"
        return (0u32 : stdgo.GoUInt32);
    }
}
