package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackText(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1870"
        if ((_off >= (_msg.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1871"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _off, _2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errbaselen._errBaseLen };
        };
        var _beginOff = @:assignType (_off + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _endOff = @:assignType (_beginOff + (_msg[(_off : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1875"
        if ((_endOff > (_msg.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1876"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _off, _2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcalclen._errCalcLen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1878"
        return { _0 : ((_msg.__slice__(_beginOff, _endOff) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _endOff, _2 : (null : stdgo.Error) };
    }
