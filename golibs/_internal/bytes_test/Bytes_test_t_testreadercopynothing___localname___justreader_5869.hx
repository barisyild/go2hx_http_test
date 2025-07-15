package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___justreader_5869_static_extension.T_testReaderCopyNothing___localname___justReader_5869_static_extension) @:using(_internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___justreader_5869_static_extension.T_testReaderCopyNothing___localname___justReader_5869_static_extension) class T_testReaderCopyNothing___localname___justReader_5869 {
    @:embedded
    public var reader : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?reader:stdgo._internal.io.Io_reader.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "reader", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])));
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.reader ?? throw stdgo.Error._nullPointerDereference.__underlying__()).read;
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___justReader_5869(reader);
    }
}
