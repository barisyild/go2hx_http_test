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
@:keep @:allow(stdgo._internal.net.Net.IPMask_asInterface) class IPMask_static_extension {
    @:keep
    @:tdfield
    static public function string( _m:stdgo._internal.net.Net_ipmask.IPMask):stdgo.GoString {
        @:recv var _m:stdgo._internal.net.Net_ipmask.IPMask = _m;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L418"
        if ((_m.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L419"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L421"
        return stdgo._internal.net.Net__hexstring._hexString(_m)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function size( _m:stdgo._internal.net.Net_ipmask.IPMask):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _m:stdgo._internal.net.Net_ipmask.IPMask = _m;
        var _ones = (0 : stdgo.GoInt), _bits = (0 : stdgo.GoInt);
        {
            final __tmp__0 = stdgo._internal.net.Net__simplemasklength._simpleMaskLength(_m);
            final __tmp__1 = ((_m.length) * (8 : stdgo.GoInt) : stdgo.GoInt);
            _ones = @:binopAssign __tmp__0;
            _bits = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L410"
        if (_ones == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L411"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt) };
                _ones = __tmp__._0;
                _bits = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L413"
        return { _0 : _ones, _1 : _bits };
    }
}
