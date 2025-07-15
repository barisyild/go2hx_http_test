package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L27"
        return stdgo._internal.internal.bytealg.Bytealg_compare.compare(_a, _b);
    }
