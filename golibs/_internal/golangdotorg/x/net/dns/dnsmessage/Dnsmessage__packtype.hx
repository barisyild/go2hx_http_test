package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _packType(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1805"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (_field : stdgo.GoUInt16));
    }
