package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackBytes(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _field:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _newOff = @:assignType (_off + (_field.length) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1888"
        if ((_newOff > (_msg.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1889"
            return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errbaselen._errBaseLen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1891"
        _field.__copyTo__((_msg.__slice__(_off, _newOff) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1892"
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
