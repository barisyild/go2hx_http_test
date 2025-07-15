package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function containsFunc(_b:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L91"
        return (stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_b, _f) >= (0 : stdgo.GoInt) : Bool);
    }
