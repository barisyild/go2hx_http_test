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
@:keep @:allow(stdgo._internal.net.Net.Flags_asInterface) class Flags_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.net.Net_flags.Flags):stdgo.GoString {
        @:recv var _f:stdgo._internal.net.Net_flags.Flags = _f;
        var _s = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L61"
        if (stdgo._internal.net.Net__flagnames._flagNames != null) for (_i => _name in stdgo._internal.net.Net__flagnames._flagNames) {
            //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L62"
            if ((_f & (((1u32 : stdgo._internal.net.Net_flags.Flags) << (_i : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags)) : stdgo._internal.net.Net_flags.Flags) != ((0u32 : stdgo._internal.net.Net_flags.Flags))) {
                //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L63"
                if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                    _s = (_s + (("|" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _s = (_s + (_name)?.__copy__() : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L69"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _s = ("0" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/interface.go#L72"
        return _s?.__copy__();
    }
}
