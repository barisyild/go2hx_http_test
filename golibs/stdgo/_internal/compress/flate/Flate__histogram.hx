package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _histogram(_b:stdgo.Slice<stdgo.GoUInt8>, _h:stdgo.Slice<stdgo.GoInt32>):Void {
        _h = (_h.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L698"
        if (_b != null) for (__0 => _t in _b) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L699"
            _h[(_t : stdgo.GoInt)]++;
        };
    }
