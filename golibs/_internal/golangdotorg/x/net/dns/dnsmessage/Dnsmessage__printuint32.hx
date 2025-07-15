package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _printUint32(_i:stdgo.GoUInt32):stdgo.GoString {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L230"
        {
            var __0 = _buf, __1 = @:assignType ((1000000000u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _d = __1, _b = __0;
            while ((_d > (0u32 : stdgo.GoUInt32) : Bool)) {
                _b[(0 : stdgo.GoInt)] = ((((_i / _d : stdgo.GoUInt32) % (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (48u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L232"
                if (((_b[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && (_b.length) == ((_buf.length)) : Bool) && ((_buf.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                    _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
_b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_i = (_i % (_d) : stdgo.GoUInt32);
                _d = (_d / ((10u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L238"
        return (_buf : stdgo.GoString)?.__copy__();
    }
