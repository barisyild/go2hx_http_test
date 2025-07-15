package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L100"
        if (_s != null) for (_i => _b in _s) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L101"
            if (_b == (_c)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L102"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L105"
        return (-1 : stdgo.GoInt);
    }
