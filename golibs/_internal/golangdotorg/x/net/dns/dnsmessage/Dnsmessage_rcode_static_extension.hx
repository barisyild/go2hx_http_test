package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.RCode_asInterface) class RCode_static_extension {
    @:keep
    @:tdfield
    static public function goString( _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode):stdgo.GoString {
        @:recv var _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L157"
        {
            var __tmp__ = (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__rcodenames._rCodeNames != null && _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__rcodenames._rCodeNames.__exists__(_r) ? { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__rcodenames._rCodeNames[_r], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L158"
                return (("dnsmessage." : stdgo.GoString) + _n?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L160"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_r : stdgo.GoUInt16))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode):stdgo.GoString {
        @:recv var _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L149"
        {
            var __tmp__ = (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__rcodenames._rCodeNames != null && _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__rcodenames._rCodeNames.__exists__(_r) ? { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__rcodenames._rCodeNames[_r], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L150"
                return _n?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L152"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_r : stdgo.GoUInt16))?.__copy__();
    }
}
