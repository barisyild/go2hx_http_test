package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function mustNewName(_name:stdgo.GoString):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name {
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_newname.newName(_name?.__copy__()), _n:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1917"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1918"
            throw new stdgo.AnyInterface((("creating name: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1920"
        return _n?.__copy__();
    }
