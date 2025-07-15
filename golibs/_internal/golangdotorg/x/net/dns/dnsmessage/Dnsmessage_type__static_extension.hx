package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Type__asInterface) class Type__static_extension {
    @:keep
    @:tdfield
    static public function goString( _t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_):stdgo.GoString {
        @:recv var _t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L73"
        {
            var __tmp__ = (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__typenames._typeNames != null && _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__typenames._typeNames.__exists__(_t) ? { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__typenames._typeNames[_t], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L74"
                return (("dnsmessage." : stdgo.GoString) + _n?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L76"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_t : stdgo.GoUInt16))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_):stdgo.GoString {
        @:recv var _t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L65"
        {
            var __tmp__ = (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__typenames._typeNames != null && _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__typenames._typeNames.__exists__(_t) ? { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__typenames._typeNames[_t], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L66"
                return _n?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L68"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_t : stdgo.GoUInt16))?.__copy__();
    }
}
