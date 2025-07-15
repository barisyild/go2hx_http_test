package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackUint16(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1790"
        if (((_off + (2 : stdgo.GoInt) : stdgo.GoInt) > (_msg.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1791"
            return { _0 : (0 : stdgo.GoUInt16), _1 : _off, _2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errbaselen._errBaseLen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1793"
        return { _0 : (((_msg[(_off : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_msg[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), _1 : (_off + (2 : stdgo.GoInt) : stdgo.GoInt), _2 : (null : stdgo.Error) };
    }
