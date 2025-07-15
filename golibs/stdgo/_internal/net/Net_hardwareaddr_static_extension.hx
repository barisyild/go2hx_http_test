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
@:keep @:allow(stdgo._internal.net.Net.HardwareAddr_asInterface) class HardwareAddr_static_extension {
    @:keep
    @:tdfield
    static public function string( _a:stdgo._internal.net.Net_hardwareaddr.HardwareAddr):stdgo.GoString {
        @:recv var _a:stdgo._internal.net.Net_hardwareaddr.HardwareAddr = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L13"
        if ((_a.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L14"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((_a.length) * (3 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L17"
        if (_a != null) for (_i => _b in _a) {
            //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L18"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((58 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L24"
        return (_buf : stdgo.GoString)?.__copy__();
    }
}
