package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _packUint16(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1786"
        return (_msg.__append__(((_field >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_field : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
