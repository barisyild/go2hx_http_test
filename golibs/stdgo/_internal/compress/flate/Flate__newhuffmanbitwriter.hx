package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _newHuffmanBitWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> {
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L95"
        return (stdgo.Go.setRef(({ _writer : _w, _literalFreq : (new stdgo.Slice<stdgo.GoInt32>((286 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _offsetFreq : (new stdgo.Slice<stdgo.GoInt32>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _codegen : (new stdgo.Slice<stdgo.GoUInt8>((317 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _literalEncoding : stdgo._internal.compress.flate.Flate__newhuffmanencoder._newHuffmanEncoder((286 : stdgo.GoInt)), _codegenEncoding : stdgo._internal.compress.flate.Flate__newhuffmanencoder._newHuffmanEncoder((19 : stdgo.GoInt)), _offsetEncoding : stdgo._internal.compress.flate.Flate__newhuffmanencoder._newHuffmanEncoder((30 : stdgo.GoInt)) } : stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmanbitwriterdott_huffmanbitwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmanbitwriterdotT_huffmanBitWriter })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
    }
