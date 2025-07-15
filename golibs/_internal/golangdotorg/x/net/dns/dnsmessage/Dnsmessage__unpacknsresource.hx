package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackNSResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource; var _1 : stdgo.Error; } {
        var _ns:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2310"
        {
            var __tmp__ = _ns._unpack(_msg, _off), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2311"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2313"
        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource(_ns?.__copy__()) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource), _1 : (null : stdgo.Error) };
    }
