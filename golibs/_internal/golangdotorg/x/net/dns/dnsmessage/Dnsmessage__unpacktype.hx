package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackType(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _off), _t:stdgo.GoUInt16 = __tmp__._0, _o:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1810"
        return { _0 : (_t : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_), _1 : _o, _2 : _err };
    }
