package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _isHangulWithoutJamoT(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_b), _c:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        _c = (_c - ((44032 : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L389"
        return ((_c < (11172 : stdgo.GoInt32) : Bool) && ((_c % (28 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) : Bool);
    }
