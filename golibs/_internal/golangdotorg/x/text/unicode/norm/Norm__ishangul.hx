package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _isHangul(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L337"
        if (((_b.length) < (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L338"
            return false;
        };
        var _b0 = @:assignType (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L341"
        if ((_b0 < (234 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L342"
            return false;
        };
        var _b1 = @:assignType (_b[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L345"
        if (_b0 == ((234 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L347"
            return (_b1 >= (176 : stdgo.GoUInt8) : Bool);
        } else if ((_b0 < (237 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L349"
            return true;
        } else if ((_b0 > (237 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L351"
            return false;
        } else if ((_b1 < (158 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L353"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L355"
        return ((_b1 == (158 : stdgo.GoUInt8)) && (_b[(2 : stdgo.GoInt)] < (164 : stdgo.GoUInt8) : Bool) : Bool);
    }
