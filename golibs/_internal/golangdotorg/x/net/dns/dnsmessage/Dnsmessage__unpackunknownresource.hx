package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackUnknownResource(_recordType:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _length:stdgo.GoUInt16):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource; var _1 : stdgo.Error; } {
        var _parsed = @:assignType ({ type : _recordType, data : (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2690"
        {
            var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackbytes._unpackBytes(_msg, _off, _parsed.data), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2691"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2693"
        return { _0 : _parsed?.__copy__(), _1 : (null : stdgo.Error) };
    }
