package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackAResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource; var _1 : stdgo.Error; } {
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2554"
        {
            var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackbytes._unpackBytes(_msg, _off, (_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2555"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2557"
        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource(_a?.__copy__()) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource), _1 : (null : stdgo.Error) };
    }
