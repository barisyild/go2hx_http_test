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
function cIDRMask(_ones:stdgo.GoInt, _bits:stdgo.GoInt):stdgo._internal.net.Net_ipmask.IPMask {
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L79"
        if (((_bits != (32 : stdgo.GoInt)) && (_bits != (128 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L80"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L82"
        if (((_ones < (0 : stdgo.GoInt) : Bool) || (_ones > _bits : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L83"
            return null;
        };
        var _l = @:assignType (_bits / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _m = @:assignType (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_ipmask.IPMask);
        var _n = @:assignType (_ones : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L88"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _l : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L89"
                if ((_n >= (8u32 : stdgo.GoUInt) : Bool)) {
                    _m[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                    _n = (_n - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L92"
                    {
                        _i++;
                        continue;
                    };
                };
_m[(_i : stdgo.GoInt)] = (-1 ^ (((255 : stdgo.GoUInt8) >> _n : stdgo.GoUInt8) : stdgo.GoUInt8));
_n = (0u32 : stdgo.GoUInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L97"
        return _m;
    }
