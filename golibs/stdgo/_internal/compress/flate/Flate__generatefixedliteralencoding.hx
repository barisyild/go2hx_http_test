package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _generateFixedLiteralEncoding():stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> {
        var _h = stdgo._internal.compress.flate.Flate__newhuffmanencoder._newHuffmanEncoder((286 : stdgo.GoInt));
        var _codes = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codes;
        var _ch:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L68"
        {
            _ch = (0 : stdgo.GoUInt16);
            while ((_ch < (286 : stdgo.GoUInt16) : Bool)) {
                var _bits:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var _size:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L71"
                if ((_ch < (144 : stdgo.GoUInt16) : Bool)) {
                    _bits = (_ch + (48 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (8 : stdgo.GoUInt16);
                } else if ((_ch < (256 : stdgo.GoUInt16) : Bool)) {
                    _bits = ((_ch + (400 : stdgo.GoUInt16) : stdgo.GoUInt16) - (144 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (9 : stdgo.GoUInt16);
                } else if ((_ch < (280 : stdgo.GoUInt16) : Bool)) {
                    _bits = (_ch - (256 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (7 : stdgo.GoUInt16);
                } else {
                    _bits = ((_ch + (192 : stdgo.GoUInt16) : stdgo.GoUInt16) - (280 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (8 : stdgo.GoUInt16);
                };
_codes[(_ch : stdgo.GoInt)] = ({ _code : stdgo._internal.compress.flate.Flate__reversebits._reverseBits(_bits, (_size : stdgo.GoUInt8)), _len : _size } : stdgo._internal.compress.flate.Flate_t_hcode.T_hcode);
                _ch++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L91"
        return _h;
    }
