package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> {
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L60"
        return (stdgo.Go.setRef(({ _codes : (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>((_size : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_size : stdgo.GoInt).toBasic() > 0 ? (_size : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_t_hcode.T_hcode)]) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>) } : stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmanencoderdott_huffmanencoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmanencoderdotT_huffmanEncoder })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    }
