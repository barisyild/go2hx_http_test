package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _packText(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _l = @:assignType (_field.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1860"
        if ((_l > (255 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1861"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errstringtoolong._errStringTooLong };
        };
        _msg = (_msg.__append__((_l : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _msg = (_msg.__append__(...(_field : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1866"
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
