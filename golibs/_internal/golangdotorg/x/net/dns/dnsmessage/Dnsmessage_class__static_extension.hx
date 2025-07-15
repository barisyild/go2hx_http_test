package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Class__asInterface) class Class__static_extension {
    @:keep
    @:tdfield
    static public function goString( _c:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_):stdgo.GoString {
        @:recv var _c:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_ = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L111"
        {
            var __tmp__ = (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__classnames._classNames != null && _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__classnames._classNames.__exists__(_c) ? { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__classnames._classNames[_c], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L112"
                return (("dnsmessage." : stdgo.GoString) + _n?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L114"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_c : stdgo.GoUInt16))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _c:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_):stdgo.GoString {
        @:recv var _c:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_ = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L103"
        {
            var __tmp__ = (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__classnames._classNames != null && _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__classnames._classNames.__exists__(_c) ? { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__classnames._classNames[_c], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L104"
                return _n?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L106"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_c : stdgo.GoUInt16))?.__copy__();
    }
}
