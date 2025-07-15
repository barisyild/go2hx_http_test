package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___justwriter_5910_static_extension.T_testReaderCopyNothing___localname___justWriter_5910_static_extension) @:using(_internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___justwriter_5910_static_extension.T_testReaderCopyNothing___localname___justWriter_5910_static_extension) class T_testReaderCopyNothing___localname___justWriter_5910 {
    @:embedded
    public var writer : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?writer:stdgo._internal.io.Io_writer.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "writer", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }])));
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.writer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).write;
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___justWriter_5910(writer);
    }
}
