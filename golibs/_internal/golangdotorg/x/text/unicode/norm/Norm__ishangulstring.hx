package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _isHangulString(_b:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L359"
        if (((_b.length) < (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L360"
            return false;
        };
        var _b0 = @:assignType (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L363"
        if ((_b0 < (234 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L364"
            return false;
        };
        var _b1 = @:assignType (_b[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L367"
        if (_b0 == ((234 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L369"
            return (_b1 >= (176 : stdgo.GoUInt8) : Bool);
        } else if ((_b0 < (237 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L371"
            return true;
        } else if ((_b0 > (237 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L373"
            return false;
        } else if ((_b1 < (158 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L375"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L377"
        return ((_b1 == (158 : stdgo.GoUInt8)) && (_b[(2 : stdgo.GoInt)] < (164 : stdgo.GoUInt8) : Bool) : Bool);
    }
