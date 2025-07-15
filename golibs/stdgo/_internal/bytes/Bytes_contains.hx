package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function contains(_b:stdgo.Slice<stdgo.GoUInt8>, _subslice:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L76"
        return stdgo._internal.bytes.Bytes_index.index(_b, _subslice) != ((-1 : stdgo.GoInt));
    }
