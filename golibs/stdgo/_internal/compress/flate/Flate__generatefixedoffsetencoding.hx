package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _generateFixedOffsetEncoding():stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> {
        var _h = stdgo._internal.compress.flate.Flate__newhuffmanencoder._newHuffmanEncoder((30 : stdgo.GoInt));
        var _codes = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codes;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L97"
        if (_codes != null) for (_ch => _ in _codes) {
            _codes[(_ch : stdgo.GoInt)] = ({ _code : stdgo._internal.compress.flate.Flate__reversebits._reverseBits((_ch : stdgo.GoUInt16), (5 : stdgo.GoUInt8)), _len : (5 : stdgo.GoUInt16) } : stdgo._internal.compress.flate.Flate_t_hcode.T_hcode);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L100"
        return _h;
    }
