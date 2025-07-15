package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension) @:using(stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension) class T_huffmanBitWriter {
    public var _writer : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _bits : stdgo.GoUInt64 = 0;
    public var _nbits : stdgo.GoUInt = 0;
    public var _bytes : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(248, 248).__setNumber32__();
    public var _codegenFreq : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(19, 19).__setNumber32__();
    public var _nbytes : stdgo.GoInt = 0;
    public var _literalFreq : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _offsetFreq : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _codegen : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _literalEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    public var _offsetEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    public var _codegenEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_writer:stdgo._internal.io.Io_writer.Writer, ?_bits:stdgo.GoUInt64, ?_nbits:stdgo.GoUInt, ?_bytes:stdgo.GoArray<stdgo.GoUInt8>, ?_codegenFreq:stdgo.GoArray<stdgo.GoInt32>, ?_nbytes:stdgo.GoInt, ?_literalFreq:stdgo.Slice<stdgo.GoInt32>, ?_offsetFreq:stdgo.Slice<stdgo.GoInt32>, ?_codegen:stdgo.Slice<stdgo.GoUInt8>, ?_literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, ?_offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, ?_codegenEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, ?_err:stdgo.Error) {
        if (_writer != null) this._writer = _writer;
        if (_bits != null) this._bits = _bits;
        if (_nbits != null) this._nbits = _nbits;
        if (_bytes != null) this._bytes = _bytes;
        if (_codegenFreq != null) this._codegenFreq = _codegenFreq;
        if (_nbytes != null) this._nbytes = _nbytes;
        if (_literalFreq != null) this._literalFreq = _literalFreq;
        if (_offsetFreq != null) this._offsetFreq = _offsetFreq;
        if (_codegen != null) this._codegen = _codegen;
        if (_literalEncoding != null) this._literalEncoding = _literalEncoding;
        if (_offsetEncoding != null) this._offsetEncoding = _offsetEncoding;
        if (_codegenEncoding != null) this._codegenEncoding = _codegenEncoding;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_writer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false },
{ name : "_bits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false },
{ name : "_nbits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false },
{ name : "_bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 248) }, optional : false },
{ name : "_codegenFreq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, 19) }, optional : false },
{ name : "_nbytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_literalFreq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false },
{ name : "_offsetFreq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false },
{ name : "_codegen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_literalEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmanencoderdott_huffmanencoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmanencoderdotT_huffmanEncoder }) }, optional : false },
{ name : "_offsetEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmanencoderdott_huffmanencoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmanencoderdotT_huffmanEncoder }) }, optional : false },
{ name : "_codegenEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmanencoderdott_huffmanencoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmanencoderdotT_huffmanEncoder }) }, optional : false },
{ name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_huffmanBitWriter(
_writer,
_bits,
_nbits,
_bytes,
_codegenFreq,
_nbytes,
_literalFreq,
_offsetFreq,
_codegen,
_literalEncoding,
_offsetEncoding,
_codegenEncoding,
_err);
    }
}
