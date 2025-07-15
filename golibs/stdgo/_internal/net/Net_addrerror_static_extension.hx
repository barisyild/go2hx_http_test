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
@:keep @:allow(stdgo._internal.net.Net.AddrError_asInterface) class AddrError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L567"
        return false;
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L566"
        return false;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L556"
        if (({
            final value = _e;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L557"
            return ("<nil>" : stdgo.GoString);
        };
        var _s = @:assignType ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L560"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr != ((stdgo.Go.str() : stdgo.GoString))) {
            _s = (((("address " : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L563"
        return _s?.__copy__();
    }
}
