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
function _simpleMaskLength(_mask:stdgo._internal.net.Net_ipmask.IPMask):stdgo.GoInt {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L380"
        if (_mask != null) for (_i => _v in _mask) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L381"
            if (_v == ((255 : stdgo.GoUInt8))) {
                _n = (_n + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L383"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L387"
            while ((_v & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L388"
                _n++;
                _v = (_v << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L392"
            if (_v != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L393"
                return (-1 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L395"
            {
                _i++;
                while ((_i < (_mask.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L396"
                    if (_mask[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L397"
                        return (-1 : stdgo.GoInt);
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L400"
            break;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L402"
        return _n;
    }
