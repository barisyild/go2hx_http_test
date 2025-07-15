package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _printString(_str:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_str.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L200"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_str.length) : Bool)) {
                var _c = @:assignType (_str[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L202"
                if ((((((_c == ((46 : stdgo.GoUInt8)) || _c == ((45 : stdgo.GoUInt8)) : Bool) || _c == ((32 : stdgo.GoUInt8)) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    _buf = (_buf.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L207"
                    {
                        _i++;
                        continue;
                    };
                };
var _upper = @:assignType (_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
var _lower = @:assignType (((_c << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
_buf = (_buf.__append__((92 : stdgo.GoUInt8), (120 : stdgo.GoUInt8), ("0123456789abcdef" : stdgo.GoString)[(_upper : stdgo.GoInt)], ("0123456789abcdef" : stdgo.GoString)[(_lower : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L220"
        return (_buf : stdgo.GoString)?.__copy__();
    }
