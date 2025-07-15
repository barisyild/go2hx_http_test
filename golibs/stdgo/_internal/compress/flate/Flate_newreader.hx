package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L808"
        stdgo._internal.compress.flate.Flate__fixedhuffmandecoderinit._fixedHuffmanDecoderInit();
        var _f:stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor = ({} : stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L811"
        _f._makeReader(_r);
        _f._bits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(316, 316).__setNumber32__(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 316) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._codebits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(19, 19).__setNumber32__(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 19) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L815"
        _f._dict._init((32768 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L816"
        return stdgo.Go.asInterface((stdgo.Go.setRef(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_decompressordott_decompressor.__type__stdgodot_internaldotcompressdotflatedotFlate_t_decompressordotT_decompressor })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_decompressordott_decompressor.__type__stdgodot_internaldotcompressdotflatedotFlate_t_decompressordotT_decompressor }));
    }
