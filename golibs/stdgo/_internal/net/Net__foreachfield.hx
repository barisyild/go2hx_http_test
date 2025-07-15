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
function _foreachField(_x:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):stdgo.Error {
        _x = stdgo._internal.net.Net__trimspace._trimSpace(_x?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L275"
        while (((_x.length) > (0 : stdgo.GoInt) : Bool)) {
            var _sp = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_x?.__copy__(), (32 : stdgo.GoUInt8)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L277"
            if (_sp == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L278"
                return _fn(_x?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L280"
            {
                var _field = @:assignType (stdgo._internal.net.Net__trimspace._trimSpace((_x.__slice__(0, _sp) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                if (((_field.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L281"
                    {
                        var _err = @:assignType (_fn(_field?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L282"
                            return _err;
                        };
                    };
                };
            };
            _x = stdgo._internal.net.Net__trimspace._trimSpace((_x.__slice__((_sp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L287"
        return (null : stdgo.Error);
    }
