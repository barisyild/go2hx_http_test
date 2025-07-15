package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _isJamoVT(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L383"
        return ((_b[(0 : stdgo.GoInt)] == (225 : stdgo.GoUInt8)) && ((_b[(1 : stdgo.GoInt)] & (252 : stdgo.GoUInt8) : stdgo.GoUInt8) == (132 : stdgo.GoUInt8)) : Bool);
    }
