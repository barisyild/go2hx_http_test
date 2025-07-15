package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function newName(_name:stdgo.GoString):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name; var _1 : stdgo.Error; } {
        var _n = @:assignType ({ length_ : (_name.length : stdgo.GoUInt8) } : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1907"
        if (((_name.length) > (_n.data.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1908"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcalclen._errCalcLen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1910"
        (_n.data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_name);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1911"
        return { _0 : _n?.__copy__(), _1 : (null : stdgo.Error) };
    }
