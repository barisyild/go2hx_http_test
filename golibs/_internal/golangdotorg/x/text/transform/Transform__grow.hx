package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _grow(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _m = @:assignType (_b.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L552"
        if ((_m <= (32 : stdgo.GoInt) : Bool)) {
            _m = (64 : stdgo.GoInt);
        } else if ((_m <= (256 : stdgo.GoInt) : Bool)) {
            _m = (_m * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _m = (_m + ((_m >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_m : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L560"
        _buf.__copyTo__((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L561"
        return _buf;
    }
