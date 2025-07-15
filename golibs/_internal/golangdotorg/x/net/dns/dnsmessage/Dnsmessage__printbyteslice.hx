package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _printByteSlice(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L184"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L185"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((5 : stdgo.GoInt) * (_b.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint8bytes._printUint8Bytes(_buf, (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L189"
        if ((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) != null) for (__0 => _n in (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) {
            _buf = (_buf.__append__((44 : stdgo.GoUInt8), (32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint8bytes._printUint8Bytes(_buf, (_n : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L193"
        return (_buf : stdgo.GoString)?.__copy__();
    }
