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
function _isDomainName(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L77"
        if (_s == (("." : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L78"
            return true;
        };
        var _l = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L90"
        if (((_l == ((0 : stdgo.GoInt)) || (_l > (254 : stdgo.GoInt) : Bool) : Bool) || (_l == ((254 : stdgo.GoInt)) && _s[(_l - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((46 : stdgo.GoUInt8)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L91"
            return false;
        };
        var _last = @:assignType ((46 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _nonNumeric = @:assignType (false : Bool);
        var _partlen = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L97"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L99"
                if ((((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (_c == (95 : stdgo.GoUInt8)) : Bool)) {
                    _nonNumeric = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L104"
                    _partlen++;
                } else if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L107"
                    _partlen++;
                } else if (_c == ((45 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L110"
                    if (_last == ((46 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L111"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L113"
                    _partlen++;
                    _nonNumeric = true;
                } else if (_c == ((46 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L117"
                    if (((_last == (46 : stdgo.GoUInt8)) || (_last == (45 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L118"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L120"
                    if (((_partlen > (63 : stdgo.GoInt) : Bool) || (_partlen == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L121"
                        return false;
                    };
                    _partlen = (0 : stdgo.GoInt);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L101"
                    return false;
                };
_last = _c;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L127"
        if (((_last == (45 : stdgo.GoUInt8)) || (_partlen > (63 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L128"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L131"
        return _nonNumeric;
    }
