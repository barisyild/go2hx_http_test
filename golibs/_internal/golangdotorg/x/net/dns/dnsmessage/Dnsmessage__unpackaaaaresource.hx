package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackAAAAResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource; var _1 : stdgo.Error; } {
        var _aaaa:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2582"
        {
            var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackbytes._unpackBytes(_msg, _off, (_aaaa.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2583"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2585"
        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource(_aaaa?.__copy__()) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource), _1 : (null : stdgo.Error) };
    }
