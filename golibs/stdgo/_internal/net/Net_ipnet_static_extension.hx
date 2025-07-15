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
@:keep @:allow(stdgo._internal.net.Net.IPNet_asInterface) class IPNet_static_extension {
    @:keep
    @:tdfield
    static public function string( _n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet> = _n;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L475"
        if (({
            final value = _n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L476"
            return ("<nil>" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.Net__networknumberandmask._networkNumberAndMask(_n), _nn:stdgo._internal.net.Net_ip.IP = __tmp__._0, _m:stdgo._internal.net.Net_ipmask.IPMask = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L479"
        if (((_nn == null) || (_m == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L480"
            return ("<nil>" : stdgo.GoString);
        };
        var _l = @:assignType (stdgo._internal.net.Net__simplemasklength._simpleMaskLength(_m) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L483"
        if (_l == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L484"
            return (((_nn.string() : stdgo.GoString) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_m.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L486"
        return (((_nn.string() : stdgo.GoString) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_l : stdgo.GoUInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function network( _n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet> = _n;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L466"
        return ("ip+net" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function contains( _n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>, _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet> = _n;
        var __tmp__ = stdgo._internal.net.Net__networknumberandmask._networkNumberAndMask(_n), _nn:stdgo._internal.net.Net_ip.IP = __tmp__._0, _m:stdgo._internal.net.Net_ipmask.IPMask = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L450"
        {
            var _x = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if (_x != null) {
                _ip = _x;
            };
        };
        var _l = @:assignType (_ip.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L454"
        if (_l != ((_nn.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L455"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L457"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _l : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L458"
                if ((_nn[(_i : stdgo.GoInt)] & _m[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != ((_ip[(_i : stdgo.GoInt)] & _m[(_i : stdgo.GoInt)] : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L459"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L462"
        return true;
    }
}
