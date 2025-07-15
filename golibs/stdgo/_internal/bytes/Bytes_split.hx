package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function split(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L406"
        return stdgo._internal.bytes.Bytes__gensplit._genSplit(_s, _sep, (0 : stdgo.GoInt), (-1 : stdgo.GoInt));
    }
