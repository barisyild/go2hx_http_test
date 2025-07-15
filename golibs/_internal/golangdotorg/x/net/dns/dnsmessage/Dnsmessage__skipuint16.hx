package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _skipUint16(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1797"
        if (((_off + (2 : stdgo.GoInt) : stdgo.GoInt) > (_msg.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1798"
            return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errbaselen._errBaseLen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1800"
        return { _0 : (_off + (2 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
