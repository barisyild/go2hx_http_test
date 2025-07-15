package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _decomposeHangul(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt {
        {};
        _r = (_r - ((44032 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _x = @:assignType (_r % (28 : stdgo.GoInt32) : stdgo.GoInt32);
        _r = (_r / ((28 : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L399"
        stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_buf, ((4352 : stdgo.GoInt32) + (_r / (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L400"
        stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((4449 : stdgo.GoInt32) + (_r % (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L401"
        if (_x != ((0 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L402"
            stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((4519 : stdgo.GoInt32) + _x : stdgo.GoInt32));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L403"
            return (9 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L405"
        return (6 : stdgo.GoInt);
    }
