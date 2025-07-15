package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _matchLen(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):stdgo.GoInt {
        _a = (_a.__slice__(0, _max) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L320"
        if (_a != null) for (_i => _av in _a) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L321"
            if (_b[(_i : stdgo.GoInt)] != (_av)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L322"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L325"
        return _max;
    }
